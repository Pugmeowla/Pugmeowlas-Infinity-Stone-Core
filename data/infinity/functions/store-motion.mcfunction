execute store result score @s TimeStopper_X run data get entity @s Motion[0] 10000
execute store result score @s TimeStopper_Y run data get entity @s Motion[1] 10000
execute store result score @s TimeStopper_Z run data get entity @s Motion[2] 10000

data modify entity @s Motion set value [0.0d,0.0d,0.0d]
scoreboard players set @s TimeStopper_Time 1000

tag @s add TimeStopper-stopped

data modify entity @s NoGravity set value 1b

particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 1 5