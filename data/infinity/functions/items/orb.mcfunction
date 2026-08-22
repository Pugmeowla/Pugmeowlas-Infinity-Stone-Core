# one NBT scan, distance-limited to players, tag the matches
execute as @a at @s run tag @e[type=item,distance=..8,nbt={Item:{id:"infinity:orb"}}] add orb_found

# act on the tag from here on -- no more NBT comparisons
execute as @e[tag=orb_found] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["orb_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["orb_ground_interaction"]}]}
execute as @e[tag=orb_found] at @s run kill @s

execute as @e[type=armor_stand,tag=orb_ground] at @s run superpower add infinity:orb_ground @s
execute as @e[type=armor_stand,tag=orb_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet

execute as @e[type=minecraft:interaction,tag=orb_ground_interaction] on target run give @s infinity:orb 1
execute as @e[type=minecraft:interaction,tag=orb_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=orb_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=orb_ground_interaction] run data remove entity @s interaction

tag @e[tag=orb_found] remove orb_found
