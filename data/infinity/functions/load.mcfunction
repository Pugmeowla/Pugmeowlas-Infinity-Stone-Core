execute in infinity:vormir run forceload add 0 0
scoreboard objectives add power_stone dummy
scoreboard objectives add space_stone dummy
scoreboard objectives add reality_stone dummy
scoreboard objectives add time_stone dummy
scoreboard objectives add soul_stone dummy
scoreboard objectives add mind_stone dummy
scoreboard objectives add mobCount dummy
scoreboard objectives add killLimit dummy
scoreboard objectives add TimeStopper_X dummy
scoreboard objectives add TimeStopper_Y dummy
scoreboard objectives add TimeStopper_Z dummy
scoreboard objectives add TimeStopper_Time dummy
scoreboard objectives add blackholetoggle dummy
scoreboard objectives add portal_lifetime dummy
scoreboard players set @a blackholetoggle 0
scoreboard objectives add hasGauntletItem dummy
team add peaceful
scoreboard objectives add initCheck dummy
execute unless score global initCheck matches 2 run function infinity:init_once
scoreboard players set @a blackholetoggle 0

bossbar add time {"text":"Current Time Speed"}
bossbar set minecraft:time color green
bossbar set minecraft:time max 11

scoreboard objectives add gauntlet5 dummy

execute in infinity:soulworld run forceload add -2 -2 2 2
execute in infinity:soulworld run fill -2 75 2 2 -128 -2 air
execute in infinity:soulworld run fill 2 -128 -2 -2 -128 2 minecraft:end_portal

execute in infinity:soulworld run forceload add 1000 1000 1000 1000
execute in infinity:soulworld run fill 996 75 996 1004 83 1004 minecraft:bedrock outline
execute in infinity:soulworld run fill 1003 76 1003 997 82 997 minecraft:light
execute in infinity:soulworld run setblock 1000 76 1004 minecraft:oak_door[half=lower,facing=north,hinge=left]
execute in infinity:soulworld run setblock 1000 77 1004 minecraft:oak_door[half=upper,facing=north,hinge=left]
execute in infinity:soulworld run setblock 1000 76 1003 minecraft:oak_sign[rotation=0]{back_text:{messages:['"Do not let mobs"','"out of this chunk"','"if they are to be"','"snapped back"']}}

scoreboard objectives add power_stone_open_stage dummy
scoreboard objectives add orb_opened dummy
scoreboard players set @a power_stone_open_stage 0

execute in infinity:morag run forceload add 69420 69420 69420 69420