scoreboard players set #mobs mobCount 0
execute as @e[type=!minecraft:player,type=!item, distance=..100] run scoreboard players add #mobs mobCount 1
execute store result storage mypack:data mobCount int 1 run scoreboard players get #mobs mobCount
execute store result score #kill killLimit run data get storage mypack:data mobCount 0.5