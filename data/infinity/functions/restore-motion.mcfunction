execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s TimeStopper_X
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s TimeStopper_Y
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s TimeStopper_Z

scoreboard players reset @s TimeStopper_Time
scoreboard players reset @s TimeStopper_X
scoreboard players reset @s TimeStopper_Y
scoreboard players reset @s TimeStopper_Z

data modify entity @s NoGravity set value 0b

tag @s remove TimeStopper-stopped