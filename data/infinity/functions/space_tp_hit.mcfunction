execute as @e[tag=raycast,limit=1,sort=nearest] at @s run teleport Pugmeowla ~ ~ ~
execute as @e[tag=raycast,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["temp_stand"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"infinity:portal",Count:1b}]}
kill @e[tag=raycast]
schedule function infinity:space_tp_remove 2s