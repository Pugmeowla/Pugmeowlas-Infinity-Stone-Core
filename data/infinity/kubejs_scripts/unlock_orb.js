ServerEvents.commandRegistry(event => {
    const { commands: Commands } = event

    event.register(
        Commands.literal("unlock_orb")
            .executes(ctx => {
                if (!ctx.source.hasPermission(2)) {
                    ctx.source.player.tell("§cYou do not have permission to use this command.")
                    return 0
                }

                const player = ctx.source.player
                const username = player.getGameProfile().getName()
                const server = ctx.source.getServer()

               

              server.runCommandSilent(`/scoreboard players set ${username} power_stone_open_stage 15`)
              server.runCommandSilent(`/scoreboard players set ${username} orb_opened 1`)

                player.tell("§aThe Orb has been unlocked!")
                return 1
            })
    )
})

