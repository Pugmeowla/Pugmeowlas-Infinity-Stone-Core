function infinity:items/tick

# --- throttle: the checks below don't need to run at 20Hz, so they only
# fire once/second (every 20th tick) instead of every tick ---
scoreboard players add global infinity_tickThrottle 1
execute if score global infinity_tickThrottle matches 20.. run scoreboard players set global infinity_tickThrottle 0

execute if score global infinity_tickThrottle matches 0 run function infinity:maps
execute if score global infinity_tickThrottle matches 0 run function infinity:items/stone_cleanup
execute if score global infinity_tickThrottle matches 0 run tag @e[type=minecraft:wolf,nbt={Sitting:1b}] add tamed_wolf

scoreboard players set @a hasGauntletItem 0
function #gauntlet_items
execute as @a[scores={hasGauntletItem=1}] run superpower add infinity:infinity_gauntlet @s
execute as @a[scores={hasGauntletItem=1}] run superpower add infintrix:infintrix @s
execute as @a[scores={hasGauntletItem=1},palladium.power=satsu_iron_man_addon:iron_man/marks/mark_85/main] run superpower add infinity_protocol:infinity_stone_iron_man @s
execute as @a[scores={hasGauntletItem=0}] run superpower remove infinity:infinity_gauntlet @s
execute as @a[scores={hasGauntletItem=0}] run superpower remove infintrix:infintrix @s
execute as @a[scores={hasGauntletItem=0},palladium.power=satsu_iron_man_addon:iron_man/marks/mark_85/main] run superpower remove infinity_protocol:infinity_stone_iron_man @s

execute as @e[tag=snap,limit=1] run function infinity:snap