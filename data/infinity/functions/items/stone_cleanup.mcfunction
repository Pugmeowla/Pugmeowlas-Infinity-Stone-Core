# despawns leftover ground-stone armor stands/interactions once a player has
# picked up that stone. Throttled to run once/second (see infinity:tick) --
# this doesn't need to run at 20Hz, the ground props are already handled
# instantly by the pickup logic in items/*.mcfunction.

execute if entity @a[nbt={Inventory:[{id:"infinity:power_stone"}]}] run kill @e[type=armor_stand,tag=power_stone_ground]
execute if entity @a[nbt={Inventory:[{id:"infinity:power_stone"}]}] run kill @e[type=minecraft:interaction,tag=power_stone_ground_interaction]

execute if entity @a[nbt={Inventory:[{id:"infinity:space_stone"}]}] run kill @e[type=armor_stand,tag=space_stone_ground]
execute if entity @a[nbt={Inventory:[{id:"infinity:space_stone"}]}] run kill @e[type=minecraft:interaction,tag=space_stone_ground_interaction]

execute if entity @a[nbt={Inventory:[{id:"infinity:reality_stone"}]}] run kill @e[type=armor_stand,tag=reality_stone_ground]
execute if entity @a[nbt={Inventory:[{id:"infinity:reality_stone"}]}] run kill @e[type=minecraft:interaction,tag=reality_stone_ground_interaction]

execute if entity @a[nbt={Inventory:[{id:"infinity:time_stone"}]}] run kill @e[type=armor_stand,tag=time_stone_ground]
execute if entity @a[nbt={Inventory:[{id:"infinity:time_stone"}]}] run kill @e[type=minecraft:interaction,tag=time_stone_ground_interaction]

execute if entity @a[nbt={Inventory:[{id:"infinity:soul_stone"}]}] run kill @e[type=armor_stand,tag=soul_stone_ground]
execute if entity @a[nbt={Inventory:[{id:"infinity:soul_stone"}]}] run kill @e[type=minecraft:interaction,tag=soul_stone_ground_interaction]

execute if entity @a[nbt={Inventory:[{id:"infinity:mind_stone"}]}] run kill @e[type=armor_stand,tag=mind_stone_ground]
execute if entity @a[nbt={Inventory:[{id:"infinity:mind_stone"}]}] run kill @e[type=minecraft:interaction,tag=mind_stone_ground_interaction]
