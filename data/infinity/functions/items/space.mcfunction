# one NBT scan, distance-limited to players, tag the matches
execute as @a at @s run tag @e[type=item,distance=..8,nbt={Item:{id:"infinity:space_stone"}}] add space_stone_found

# act on the tag from here on -- no more NBT comparisons
execute as @e[tag=space_stone_found] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["space_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["space_stone_ground_interaction"]}]}
execute as @e[tag=space_stone_found] at @s run kill @s

execute as @e[type=armor_stand,tag=space_stone_ground] at @s run superpower add infinity:space_stone_ground @s
execute as @e[type=armor_stand,tag=space_stone_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet

execute as @e[type=minecraft:interaction,tag=space_stone_ground_interaction] on target run give @s infinity:space_stone 1
execute as @e[type=minecraft:interaction,tag=space_stone_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=space_stone_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=space_stone_ground_interaction] run data remove entity @s interaction

tag @e[tag=space_stone_found] remove space_stone_found
