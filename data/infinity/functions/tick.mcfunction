execute as @e[tag=blackhole] at @s run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0.5 1 force
execute as @e[tag=blackhole] at @s run particle minecraft:squid_ink ~ ~ ~ 0.1 0 0.1 0.001 5 force
execute at @e[type=minecraft:armor_stand,tag=blackhole] as @e[tag=!blackholeon,type=!minecraft:armor_stand,distance=..7] at @s facing entity @e[type=minecraft:armor_stand,tag=blackhole,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.2
execute as @e[tag=blackhole] at @s run damage @e[distance=..1,type=!armor_stand,limit=1,sort=nearest,tag=!blackholeon] 5 minecraft:generic_kill
execute as @e[tag=blackholeon] run execute at @s run tp @e[type=!player,type=!item,distance=..7,tag=blackhole] ^ ^1 ^5
execute as @e[tag=blackhole] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace

scoreboard players remove @e[tag=TimeStopper-stopped] TimeStopper_Time 1
execute as @e[tag=TimeStopper-stopped,scores={TimeStopper_Time=..0}] at @s run function infinity:restore-motion