(function () {
    let ClientboundSetEntityMotionPacket = Java.loadClass('net.minecraft.network.protocol.game.ClientboundSetEntityMotionPacket');

    EntityEvents.hurt("minecraft:player", event => {
        if (event.entity.isPlayer() && abilityUtil.isEnabled(event.player, 'infinity:space_stone', 'force_field')) {
            let source = event.source;
            
            if (source.actual != null && (
                source.actual.getType().toString().includes('iron_golem') ||
                source.actual.getType().toString().includes('warden') ||
                source.actual.getType().toString().includes('vindicator') ||
                source.actual.getType().toString().includes('piglin_brute') ||
                source.actual.getType().toString().includes('zombified_piglin')
            )) {
                event.cancel();
                return;
            }

            if (event.damage < 23) {
                if (source.actual != null) {
                    event.cancel();
                }
            }
        }
    });

    

})();