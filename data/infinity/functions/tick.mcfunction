execute at @e[type=minecraft:armor_stand,tag=blackhole] as @e[tag=!blackholeon,type=!minecraft:armor_stand,distance=..7] at @s facing entity @e[type=minecraft:armor_stand,tag=blackhole,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.2
execute as @e[tag=blackhole] at @s run damage @e[distance=..1,type=!armor_stand,limit=1,sort=nearest,tag=!blackholeon] 20 minecraft:generic_kill
execute as @e[tag=blackholeon] run execute at @s run tp @e[type=!player,type=!item,distance=..7,tag=blackhole] ^ ^1 ^5
execute as @e[type=armor_stand,tag=blackhole] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=blackhole] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace
scoreboard players remove @e[tag=TimeStopper-stopped] TimeStopper_Time 1
execute as @e[tag=TimeStopper-stopped,scores={TimeStopper_Time=..0}] at @s run function infinity:restore-motion
tag @e[type=minecraft:wolf,nbt={Sitting:1b}] add tamed_wolf
execute anchored eyes as @e[tag=blackhole] at @s run particle minecraft:end_rod ~ ~1 ~ 1 0 1 0.03 1
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
