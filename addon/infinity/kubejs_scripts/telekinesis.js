/*
 * Telekinesis
 * Requires: Pehkui
 * Developed by phantompig, inspired by Matt
 */

let $Util = Java.loadClass('net.minecraft.Util');
let $ScaleTypes = Java.loadClass('virtuoel.pehkui.api.ScaleTypes');

StartupEvents.registry('palladium:abilities', event => {
    event.create('phantom_pe:telekinesis')
        .icon(palladium.createItemIcon('minecraft:player_head'))

        .documentationDescription('Telekinesis: grab blocks and entities and float them in front of you.')

        .addProperty('range', 'float', 15, 'The range of the ability.')
        .addProperty('strength_multiplier', 'float', 0.8, 'The strength/speed of the telekinesis.')
        .addProperty('damage_multiplier', 'float', 2, 'The damage to apply when hitting an entity with a block via telekinesis.')

        .addUniqueProperty('held_entity', 'uuid', $Util.NIL_UUID)

        .firstTick((entity, entry, holder, enabled) => {
            if (enabled) {
                let rayTrace = entity.rayTrace(entry.getPropertyByName('range'), false);

                if (rayTrace.entity != null) {
                    entry.setUniquePropertyByName('held_entity', rayTrace.entity.uuid);
                } else if (rayTrace.block != null) {
                    entry.setUniquePropertyByName('held_entity', spawnBlockDisplay(rayTrace.block).uuid);
                }
            }
        })

        .tick((entity, entry, holder, enabled) => {
            if (enabled) {
                let heldEntity = getHeldEntity(entity.level, entry);
                if (heldEntity == null) return;
                let range = entry.getPropertyByName('range');
                let rayTrace = entity.rayTrace(range);
                let lookVec = entity.getLookAngle();
                let boundingBox = heldEntity.getBoundingBox();

                let targetPos = (rayTrace.entity == heldEntity ? rayTrace.hit.add(lookVec) : rayTrace.hit) ?? entity.getEyePosition().add(lookVec.scale(range));

                heldEntity.setDeltaMovement(targetPos.subtract(heldEntity.getEyePosition()).scale(entry.getPropertyByName('strength_multiplier')));
                heldEntity.resetFallDistance();
                entity.level.getEntities(heldEntity, boundingBox).forEach(collidedEntity => {
                    if (collidedEntity != entity && collidedEntity.living) collidedEntity.attack(entry.getPropertyByName('damage_multiplier') * heldEntity.deltaMovement.lengthSqr());
                })

                entity.level.sendParticles(
                    'minecraft:enchant',
                    heldEntity.x, heldEntity.y, heldEntity.z,
            /*count*/ 2,
                    boundingBox.getXsize(), boundingBox.getYsize(), boundingBox.getZsize(),
            /*speed*/ 0
                );
                entity.level.sendParticles(
                    'minecraft:enchanted_hit',
                    heldEntity.x, heldEntity.y, heldEntity.z,
            /*count*/ 1,
                    boundingBox.getXsize(), boundingBox.getYsize(), boundingBox.getZsize(),
            /*speed*/ 0
                );
            }
        })

        .lastTick((entity, entry, holder, enabled) => {
            let heldEntity = getHeldEntity(entity.level, entry);
            if (heldEntity == null) return;

            if (heldEntity.type == 'minecraft:armor_stand' && heldEntity.passengers.size() == 1) blockDisplayToBlock(heldEntity);

            entry.setUniquePropertyByName('held_entity', $Util.NIL_UUID);
        });
});

function getHeldEntity(level, entry) {
    let uuid = entry.getPropertyByName('held_entity');
    if (uuid == $Util.NIL_UUID) return;
    return getEntity(level, uuid);
}
function getEntity(level, uuid) {
    if (uuid == null || uuid == $Util.NIL_UUID) return null;
    let entities = level.getEntities();
    for (let i = 0; i < entities.size(); i++) {
        if (entities.get(i).uuid.equals(uuid)) {
            return entities.get(i);
        }
    }
}

function spawnBlockDisplay(block) {
    '/summon snowball ~ ~ ~ {Silent:1b,Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:loom",Properties:{facing:"north"}}}],Item:{id:"minecraft:egg",Count:1b}}'
    let display = block.level.createEntity('minecraft:block_display');
    display.setPosition(block);
    display.mergeNbt({ block_state: { Name: block.id, Properties: block.properties }, transformation: { translation: [-0.5, -0.5, -0.5], right_rotation: [0, 0, 0, 1], left_rotation: [0, 0, 0, 1], scale: [1, 1, 1] } })
    block.set('air');
    let mount = block.level.createEntity('minecraft:armor_stand');
    mount.setPos(block.pos.center.add(0, -1, 0));
    mount.mergeNbt({ Invisible: 1 });
    display.startRiding(mount);
    $ScaleTypes.HEIGHT.getScaleData(mount).setScale(0.5);
    mount.spawn();
    display.spawn();
    return mount;
}
function blockDisplayToBlock(entity) {
    let display = entity.passengers.get(0);
    if (display.type != 'minecraft:block_display') return;
    let block = display.block;

    if (block.id == 'minecraft:bedrock') block = block.up;
    block.level.destroyBlock(block.pos, true);

    let props = {};
    if (display.nbt.block_state.Properties != null) for (let [key, value] of Object.entries(display.nbt.block_state.Properties)) {
        props[key] = value;
    }

    block.set(display.nbt.block_state.Name, props);
    block.level.markAndNotifyBlock(
        block.pos,
        block.level.getChunk(block.pos),
        block.blockState,
        block.blockState,
        3, // flags: notify neighbors and client
        512 // this includes block update + re-render
    )
    display.discard();
    entity.discard();
}