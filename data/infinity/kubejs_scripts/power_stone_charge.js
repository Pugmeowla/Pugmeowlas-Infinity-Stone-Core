const FLUX_CAPACITOR_ID = 'infinity:power_stone' // Your actual item ID

// Recharge items in player inventories every tick
PlayerEvents.tick(event => {
  const player = event.player
  if (!player) return

  player.getInventory().forEach(item => {
    if (item && item.id === FLUX_CAPACITOR_ID && item.energyStorage) {
      item.energyStorage.set(item.energyStorage.max)
    }
  })
})

// Recharge items in inventories of block entities every tick
ServerEvents.tick(event => {
  const level = event.level
  if (!level || !level.blockEntities) return

  for (const be of level.blockEntities) {
    if (!be || typeof be.getInventory !== 'function') continue

    const inv = be.getInventory()
    if (!inv || typeof inv.forEach !== 'function') continue

    inv.forEach(item => {
      if (item && item.id === FLUX_CAPACITOR_ID && item.energyStorage) {
        item.energyStorage.set(item.energyStorage.max)
      }
    })
  }
})
