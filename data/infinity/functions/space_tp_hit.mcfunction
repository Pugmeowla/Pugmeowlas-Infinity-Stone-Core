execute as @e[tag=raycast,limit=1,sort=nearest] at @s run teleport Pugmeowla ~ ~0.5 ~
execute as @e[tag=raycast,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["temp_stand"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"infinity:portal",Count:1b}]}
kill @e[tag=raycast]
playsound infinity:space_stone_portal block @a ~ ~ ~ 1 1 1
schedule function infinity:space_tp_remove 2s