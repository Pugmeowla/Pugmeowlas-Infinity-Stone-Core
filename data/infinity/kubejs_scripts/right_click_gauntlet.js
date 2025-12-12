BlockEvents.rightClicked('infinity:infinity_gauntlet_block', event => {
  if (event.hand != 'MAIN_HAND') return

  event.server.runCommandSilent(`execute as ${event.player.username} run give @s infinity:infinity_gauntlet`)
  event.server.runCommandSilent(`execute as ${event.player.username} run tag @s add kill_gauntlet`)
    event.server.runCommandSilent(`execute as ${event.player.username} run schedule function infinity:remove_insert_anim 5t`)
event.block.set('minecraft:air')
  
})
