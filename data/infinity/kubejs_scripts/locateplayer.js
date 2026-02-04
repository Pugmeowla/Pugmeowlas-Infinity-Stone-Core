ServerEvents.commandRegistry(event => {
    const { commands: Commands, arguments: Arguments } = event;

    event.register(
        Commands.literal("locateplayer")
            .then(Commands.argument("target", Arguments.PLAYER.create(event))
                .executes(ctx => {
                    let player = ctx.source.player;
                    let server = ctx.source.server;
                    if (abilityUtil.isEnabled(player, 'infinity:soul_stone', 'locateplayer_command')) {
                        let target = Arguments.PLAYER.getResult(ctx, "target");
                        let pos = target.blockPosition();
                        let name = target.getName().getString();

                        ctx.source.sendSuccess(
                            Component.literal(`The entity "${name}" is located at: ${pos.x}, ${pos.y}, ${pos.z}`),
                            false
                        );
                    } else {

                        ctx.source.sendFailure(
                            Component.literal("You are not worthy to use the Soul Stone’s locate ability.")
                        );
                    }

                    return 1;
                })
            )
    );
});
