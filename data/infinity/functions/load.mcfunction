execute in infinity:vormir run forceload add 0 0
scoreboard objectives add mobCount dummy
scoreboard objectives add killLimit dummy
scoreboard objectives add TimeStopper_X dummy
scoreboard objectives add TimeStopper_Y dummy
scoreboard objectives add TimeStopper_Z dummy
scoreboard objectives add TimeStopper_Time dummy
scoreboard objectives add blackholetoggle dummy
team add peaceful
scoreboard objectives add initCheck dummy
execute unless score global initCheck matches 2 run function infinity:init_once
