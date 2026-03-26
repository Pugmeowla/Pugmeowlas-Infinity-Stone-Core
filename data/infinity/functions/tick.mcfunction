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
execute as @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}] at @s run setblock ~ ~ ~ infinity:infinity_gauntlet_block
execute as @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:infinity_gauntlet"}}]
execute if entity @a[tag=kill_gauntlet] run kill @e[type=minecraft:falling_block]
superpower add infinity:pugmeowla @a[name=Pugmeowla,tag=!pugmeowla]