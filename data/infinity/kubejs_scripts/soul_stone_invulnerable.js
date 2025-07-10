EntityEvents.hurt("minecraft:player", event => {
    if (!abilityUtil.isEnabled(event.player, "infinity:soul_stone", "invulnerability")) return;
    let entity = event.entity;
    let damage = Math.floor(event.damage);
    if (damage) {
	entity.server.runCommandSilent(`execute as ${entity.username} at ${entity.username} run particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0 7 force ${entity.username}`);
    event.cancel();
    }
});