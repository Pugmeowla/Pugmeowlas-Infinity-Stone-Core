execute at @s run playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 0
execute at @s run playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 2
execute at @s run particle dust 1 1 1 1.5 ~ ~0.5 ~ 0.6 0.6 0.6 0 50 force
execute at @s run effect give @s invisibility 10 0 true
kill @s
tag @s remove dissipating
tag @s remove snapped
tag @a remove snapper
