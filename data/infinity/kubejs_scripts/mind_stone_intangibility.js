(function () {
    let ClientboundSetEntityMotionPacket = Java.loadClass('net.minecraft.network.protocol.game.ClientboundSetEntityMotionPacket');

	EntityEvents.hurt(event => {
		let entity = event.entity;

		if (entity.type == 'minecraft:player' &&
			abilityUtil.hasPower(entity, "infinity:mind_stone") &&
			abilityUtil.isEnabled(entity, "infinity:mind_stone", "intangibility")) {

			entity.invulnerableTime = 20;
			event.cancel();
		}
	});

    

})();