EntityEvents.hurt(event => {
    const attacker = event.source?.player
    if (!attacker) return

    // Only trigger if player has the punch_effect tag
    if (!attacker.tags.contains("punch_effect")) return

    // Add purple_punch tag
    attacker.addTag("purple_punch")

    // Remove after 2 seconds (40 ticks)
    attacker.server.scheduleInTicks(20, () => {
        if (attacker.isAlive()) {
            attacker.removeTag("purple_punch")
        }
    })
})
