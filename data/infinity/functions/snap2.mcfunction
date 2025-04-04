execute as @e[type=!minecraft:player, distance=..100, sort=random, limit=1] if score #kill killLimit matches 1.. run kill @s
scoreboard players remove #kill killLimit 1
function infinity:snap2