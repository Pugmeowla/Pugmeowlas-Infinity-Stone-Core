# one NBT scan, distance-limited to players, tag the matches
execute as @a at @s run tag @e[type=item,distance=..8,nbt={Item:{id:"infinity:empty_scepter"}}] add empty_scepter_found

# act on the tag from here on -- no more NBT comparisons
execute as @e[tag=empty_scepter_found] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["empty_scepter_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["empty_scepter_ground_interaction"]}]}
execute as @e[tag=empty_scepter_found] at @s run kill @s

execute as @e[type=armor_stand,tag=empty_scepter_ground] at @s run superpower add infinity:empty_scepter_ground @s
execute as @e[type=armor_stand,tag=empty_scepter_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=empty_scepter_ground_interaction] on target run give @s infinity:empty_scepter 1
execute as @e[type=minecraft:interaction,tag=empty_scepter_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=empty_scepter_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=empty_scepter_ground_interaction] run data remove entity @s interaction

tag @e[tag=empty_scepter_found] remove empty_scepter_found

execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["mind_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["mind_stone_ground_interaction"]}]}
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["empty_scepter_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["empty_scepter_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=mind_stone_ground] at @s run superpower add infinity:mind_stone_ground @s
execute as @e[type=armor_stand,tag=empty_scepter_ground] at @s run superpower add infinity:empty_scepter_ground @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run particle minecraft:dust 1.0 0.9 0.1 2.0 ~ ~0.2 ~ 0.3 0.3 0.3 1 50 force
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run particle minecraft:flash ~ ~0.2 ~ 0 0 0 0 1 force
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] if data entity @s attack run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] if data entity @s attack run kill @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] run data remove entity @s attack

# one NBT scan, distance-limited to players, tag the matches
execute as @a at @s run tag @e[type=item,distance=..8,nbt={Item:{id:"infinity:scepter"}}] add scepter_found

# act on the tag from here on -- no more NBT comparisons
execute as @e[tag=scepter_found] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["scepter_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["scepter_ground_interaction"]}]}
execute as @e[tag=scepter_found] at @s run kill @s

execute as @e[type=armor_stand,tag=scepter_ground] at @s run superpower add infinity:scepter_ground @s
execute as @e[type=armor_stand,tag=scepter_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] on target run give @s infinity:scepter 1
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] run data remove entity @s interaction

tag @e[tag=scepter_found] remove scepter_found
