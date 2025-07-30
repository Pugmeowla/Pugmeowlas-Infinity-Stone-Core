let tickCounter = 0

ServerEvents.tick(event => {
  tickCounter++

  if (tickCounter >= 20) {
    tickCounter = 0

    event.server.players.forEach(player => {
      player.inventory.items.forEach((item, index) => {
        if (item && item.isDamageable()) {
          const current = item.maxDamage - item.damageValue
          const max = item.maxDamage
          player.tell(`Slot ${index}: ${item.id} → ${current} / ${max}`)
        }
      })
    })
  }
})
