execute unless score global mapsGiven matches 1 run execute as @e[type=minecraft:villager,tag=!giveninfinitymaps] run function infinity:map_give

execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{sanctummap:1b}}]}] run function infinity:map_replace_sanctum
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{norsemap:1b}}]}] run function infinity:map_replace_norse
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{moragmap:1b}}]}] run function infinity:map_replace_morag
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{aethermap:1b}}]}] run function infinity:map_replace_aether
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{sanctuarymap:1b}}]}] run function infinity:map_replace_sanctuary