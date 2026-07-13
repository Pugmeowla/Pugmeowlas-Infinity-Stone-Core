execute at @s run playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 0
execute at @s run playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 2
execute at @s run particle dust 1 1 1 1.5 ~ ~0.5 ~ 0.6 0.6 0.6 0 50 force
execute at @s run effect give @s invisibility 10 0 true
tag @s add snap_soulworld
team add soulworld
team join soulworld
execute in infinity:soulworld run tp @s 1000 78 1000
effect give @s minecraft:slow_falling 120 1 true
tag @s remove dissipating
tag @s remove snapped
tag @a remove snapper
