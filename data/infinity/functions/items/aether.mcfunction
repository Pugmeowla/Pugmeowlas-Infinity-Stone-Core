execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] at @s if data entity @s attack run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["reality_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["reality_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=reality_stone_ground] at @s run superpower add infinity:reality_stone_ground @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] at @s if data entity @s attack run particle minecraft:dust 1.0 0.15 0.1 2.0 ~ ~0.2 ~ 0.3 0.3 0.3 1 50 force
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] at @s if data entity @s attack run particle minecraft:flash ~ ~0.2 ~ 0 0 0 0 1 force
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] if data entity @s attack run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] if data entity @s attack run kill @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] run data remove entity @s attack

# one NBT scan, distance-limited to players, tag the matches
execute as @a at @s run tag @e[type=item,distance=..8,nbt={Item:{id:"infinity:aether"}}] add aether_found

# act on the tag from here on -- no more NBT comparisons
execute as @e[tag=aether_found] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["aether_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["aether_ground_interaction"]}]}
execute as @e[tag=aether_found] at @s run kill @s

execute as @e[type=armor_stand,tag=aether_ground] at @s run superpower add infinity:aether_ground @s
execute as @e[type=armor_stand,tag=aether_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] on target run give @s infinity:aether 1
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] run data remove entity @s interaction

tag @e[tag=aether_found] remove aether_found
