summon armor_stand ~ ~ ~ {Tags:["temp_stand"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"infinity:portal",Count:1b}]}
execute as @p at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Tags:["raycast"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @p store result entity @e[tag=raycast,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @p store result entity @e[tag=raycast,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1] 1
function infinity:space_tp_raycast