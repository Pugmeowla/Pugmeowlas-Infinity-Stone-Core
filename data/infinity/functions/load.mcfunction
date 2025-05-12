scoreboard objectives add mobCount dummy
scoreboard objectives add killLimit dummy
#aether
execute in minecraft:the_nether run forceload add 10273 -9864
#eye
forceload add -10042 9741
#orb
execute in minecraft:the_end run forceload add 10888 10123
#scepter
execute in minecraft:the_end run forceload add -9375 -10457
#tesseract
forceload add 9973 10035
#vormir
execute in minecraft:the_end run forceload add -10019 -9712

scoreboard objectives add initCheck dummy
execute unless score global initCheck matches 2 run function infinity:init_once

scoreboard objectives add TimeStopper_X dummy
scoreboard objectives add TimeStopper_Y dummy
scoreboard objectives add TimeStopper_Z dummy
scoreboard objectives add TimeStopper_Time dummy