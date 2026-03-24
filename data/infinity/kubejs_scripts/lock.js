ServerEvents.recipes(event => {
  if (!Platform.isLoaded('fsang')) {
    event.remove({ id: 'infinity:uru_plate2' })
  }
})

ServerEvents.recipes(event => {
  if (Platform.isLoaded('tconstruct')) {
    event.remove({ id: 'infinity:infinity_gauntlet' })
  }
})

ServerEvents.recipes(event => {
  if (!Platform.isLoaded('create')) {
    event.remove({ id: 'infinity:aspects_of_existance2' })
  }
})