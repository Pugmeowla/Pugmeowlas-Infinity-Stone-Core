execute at @e[type=minecraft:armor_stand,tag=blackhole] as @e[tag=!blackholeon,type=!minecraft:armor_stand,distance=..7] at @s facing entity @e[type=minecraft:armor_stand,tag=blackhole,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.2
execute as @e[tag=blackhole] at @s run damage @e[distance=..1,type=!armor_stand,limit=1,sort=nearest,tag=!blackholeon] 20 minecraft:generic_kill
execute as @e[tag=blackholeon] run execute at @s run tp @e[type=!player,type=!item,distance=..7,tag=blackhole] ^ ^1 ^5
execute as @e[type=armor_stand,tag=blackhole] at @s run tp @s ~ ~ ~ ~60 ~
execute as @e[tag=blackhole] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace
execute anchored eyes as @e[tag=blackhole] at @s run particle minecraft:end_rod ~ ~1 ~ 1 0 1 0.03 1

scoreboard players remove @e[tag=TimeStopper-stopped] TimeStopper_Time 1
execute as @e[tag=TimeStopper-stopped,scores={TimeStopper_Time=..0}] at @s run function infinity:restore-motion

tag @e[type=minecraft:wolf,nbt={Sitting:1b}] add tamed_wolf

execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~1.25 ~1.0 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~1.2071 ~1.3236 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~1.0825 ~1.625 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~0.8839 ~1.8839 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~0.625 ~2.0825 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~0.3236 ~2.2071 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~0.0 ~2.25 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-0.3236 ~2.2071 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-0.625 ~2.0825 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-0.8839 ~1.8839 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-1.0825 ~1.625 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-1.2071 ~1.3236 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-1.25 ~1.0 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-1.2071 ~0.6764 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-1.0825 ~0.375 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-0.8839 ~0.1161 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-0.625 ~-0.0825 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~-0.3236 ~-0.2071 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~0.0 ~-0.25 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~0.3236 ~-0.2071 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~0.625 ~-0.0825 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~0.8839 ~0.1161 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~1.0825 ~0.375 ~-0.5 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=temp_stand] at @s run particle minecraft:dust 0.3 0.7 1 2 ~1.2071 ~0.6764 ~-0.5 0 0 0 0 1 force

execute as @e[tag=snap,limit=1] run function infinity:snap

execute as @a if entity @s[nbt={Inventory:[{id:"infinity:reality_stone",Count:2b}]}] run clear @s infinity:reality_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:power_stone",Count:2b}]}] run clear @s infinity:power_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:mind_stone",Count:2b}]}] run clear @s infinity:mind_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:space_stone",Count:2b}]}] run clear @s infinity:space_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:time_stone",Count:2b}]}] run clear @s infinity:time_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:soul_stone",Count:2b}]}] run clear @s infinity:soul_stone 1

execute as @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}] at @s run setblock ~ ~ ~ infinity:infinity_gauntlet_block
execute as @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}]

execute if entity @a[tag=kill_gauntlet] run kill @e[type=minecraft:falling_block]

execute as @e[type=tnt] at @s run particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0 20 force @a[distance=..50]

function infinity:impact

# Fire + Smoke (reduced)
execute as @e[tag=meteorite] at @s run particle flame ~ ~ ~ 0.15 0.15 0.15 0 10 force @a[distance=..50]
execute as @e[tag=meteorite] at @s run particle campfire_cosy_smoke ~ ~ ~ 0.15 0.15 0.15 0.02 5 force @a[distance=..50]

# Blue/Purple Glow (reduced)
execute as @e[tag=meteorite] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.2 0.2 0 8 force @a[distance=..50]
execute as @e[tag=meteorite] at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.08 0.08 0.08 0 5 force @a[distance=..50]
execute as @e[tag=meteorite] at @s run particle minecraft:happy_villager ~ ~ ~ 0.1 0.1 0.1 0 6 force @a[distance=..50]

# Lava sparks (reduced)
execute as @e[tag=meteorite] at @s run particle minecraft:lava ~ ~ ~ 0.08 0.08 0.08 0 5 force @a[distance=..50]
