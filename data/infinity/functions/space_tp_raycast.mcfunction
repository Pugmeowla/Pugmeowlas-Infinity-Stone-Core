execute as @e[tag=raycast] at @s unless block ~ ~ ~ air run function infinity:space_tp_hit
execute as @e[tag=raycast] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=raycast] at @s if block ~ ~ ~ air run function infinity:space_tp_raycast
execute as @e[tag=raycast] at @s unless block ~ ~ ~ air run function infinity:space_tp_hit