ServerEvents.commandRegistry(event => {
    const { commands: Commands, arguments: Arguments } = event
    event.register(
        Commands.literal("time_set")
            .then(Commands.argument('time_set', Arguments.STRING.create(event))
                
                        .executes(ctx => {
                            let time_set = Arguments.STRING.getResult(ctx, "time_set")
                            

                            let server = ctx.source.getServer()
                            let player = ctx.source.player
                            let dim = player.getLevel().getDimension()

                            let username = player.getGameProfile().getName();

                            if (abilityUtil.isEnabled(player, 'infinity:time_stone', 'time_set')) {
                                server.runCommandSilent(`execute as ${username} at @s in ${dim} run time set ${time_set}`)
                                
                            
                }
            
                return 1;
            })
            
    ));
})