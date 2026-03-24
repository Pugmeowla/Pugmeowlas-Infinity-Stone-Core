ServerEvents.commandRegistry(event => {
    const { commands: Commands } = event

    event.register(
        Commands.literal("unlockstones")
            .executes(ctx => {
                if (!ctx.source.hasPermission(2)) {
                    ctx.source.player.tell("§cYou do not have permission to use this command.")
                    return 0
                }

                const player = ctx.source.player
                const username = player.getGameProfile().getName()
                const server = ctx.source.getServer()

                const stones = [
                    'power_stone_passive',
                    'space_stone',
                    'reality_stone',
                    'time_stone',
                    'soul_stone',
                    'mind_stone'
                ]

                stones.forEach(stone => {
                    server.runCommandSilent(`/ability unlock ${username} infinity:${stone} all`)
                })

                player.tell("§aAll Infinity Stones Abilities Unlocked!")
                return 1
            })
    )
})