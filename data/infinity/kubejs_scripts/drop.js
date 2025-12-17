EntityEvents.death(event => {
    const entity = event.entity

    // Only players
    if (!entity.isPlayer()) return

    // Check for tag
    if (!entity.tags.contains("pugmeowla")) return

    // Drop the item at death location
    event.server.runCommandSilent(
        `summon minecraft:item ${entity.x} ${entity.y} ${entity.z} {Item:{id:"infinity:pugmeowla",Count:1b}}`
    )
})
