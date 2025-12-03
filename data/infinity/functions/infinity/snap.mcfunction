scoreboard objectives add spawn dummy
scoreboard objectives add snap dummy
tag @s add snapper
execute at @s run summon marker ~ ~ ~ {Tags:[snap,half]}
execute at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 2