scoreboard players set @a hasGauntletItem 0

function infintrix:gauntlet_providers
function infinity_protocol:gauntlet_providers

execute as @a[scores={hasGauntletItem=1}] run superpower add infinity:infinity_gauntlet @s
execute as @a[scores={hasGauntletItem=1}] run superpower add infintrix:infintrix @s
execute as @a[scores={hasGauntletItem=0}] run superpower remove infinity:infinity_gauntlet @s
execute as @a[scores={hasGauntletItem=0}] run superpower remove infintrix:infintrix @s

tag @e[type=minecraft:wolf,nbt={Sitting:1b}] add tamed_wolf
execute as @e[tag=snap,limit=1] run function infinity:snap
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:reality_stone",Count:2b}]}] run clear @s infinity:reality_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:power_stone",Count:2b}]}] run clear @s infinity:power_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:mind_stone",Count:2b}]}] run clear @s infinity:mind_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:space_stone",Count:2b}]}] run clear @s infinity:space_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:time_stone",Count:2b}]}] run clear @s infinity:time_stone 1
execute as @a if entity @s[nbt={Inventory:[{id:"infinity:soul_stone",Count:2b}]}] run clear @s infinity:soul_stone 1

execute as @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["infinity_gauntlet_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["infinity_gauntlet_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=infinity_gauntlet_ground] at @s run superpower add infinity:gauntlet_ground @e[type=armor_stand,tag=infinity_gauntlet_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}]
execute as @e[type=armor_stand,tag=infinity_gauntlet_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=infinity_gauntlet_ground_interaction] on target run give @s infinity:infinity_gauntlet 1
execute as @e[type=minecraft:interaction,tag=infinity_gauntlet_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=infinity_gauntlet_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=infinity_gauntlet_ground_interaction] run data remove entity @s interaction

superpower add infinity:pugmeowla @a[name=Pugmeowla,tag=!pugmeowla]

execute as @e[type=minecraft:villager,tag=!giveninfinitymaps] run function infinity:map_give

execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{sanctummap:1b}}]}] run function infinity:map_replace_sanctum
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{norsemap:1b}}]}] run function infinity:map_replace_norse
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{moragmap:1b}}]}] run function infinity:map_replace_morag
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{aethermap:1b}}]}] run function infinity:map_replace_aether
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{sanctuarymap:1b}}]}] run function infinity:map_replace_sanctuary