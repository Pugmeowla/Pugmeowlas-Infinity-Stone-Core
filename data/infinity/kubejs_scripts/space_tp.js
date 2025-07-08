ServerEvents.commandRegistry(event => {
    const { commands: Commands, arguments: Arguments } = event
    event.register(
        Commands.literal("space_tp")
            .then(Commands.argument('x', Arguments.STRING.create(event))
                .then(Commands.argument('y', Arguments.STRING.create(event))
                    .then(Commands.argument('z', Arguments.STRING.create(event))
                        .then(Commands.argument('dimension', Arguments.RESOURCE_LOCATION.create(event))
                        .executes(ctx => {
                            let x = Arguments.STRING.getResult(ctx, "x")
                            let y = Arguments.STRING.getResult(ctx, "y")
                            let z = Arguments.STRING.getResult(ctx, "z")
                            let dimension = Arguments.RESOURCE_LOCATION.getResult(ctx, "dimension")

                            let server = ctx.source.getServer()
                            let player = ctx.source.player
                            let dim = player.getLevel().getDimension()

                            let username = player.getGameProfile().getName();

                            if (abilityUtil.isEnabled(player, 'infinity:space_stone', 'teleport_command')) {
                                server.runCommandSilent(`execute as ${username} at @s in ${dim} as @e[distance=..3] run execute in ${dimension} run tp @s ${x} ${y} ${z}`)
                                server.runCommandSilent(`summon armor_stand ~ ~ ~ {Tags:["temp_stand"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"infinity:portal",Count:1b}]}`)
                                server.runCommandSilent(`schedule function infinity:space_tp_remove 2s`)
                            
                }
            
                return 1;
            })
            
    ))) ));
})