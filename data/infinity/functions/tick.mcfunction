scoreboard players set @a hasGauntletItem 0
function #gauntlet_items
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

execute as @e[type=item,nbt={Item:{id:"infinity:space_stone"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["space_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["space_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=space_stone_ground] at @s run superpower add infinity:space_stone_ground @e[type=armor_stand,tag=space_stone_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:space_stone"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:space_stone"}}]
execute as @e[type=armor_stand,tag=space_stone_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=space_stone_ground_interaction] on target run give @s infinity:space_stone 1
execute as @e[type=minecraft:interaction,tag=space_stone_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=space_stone_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=space_stone_ground_interaction] run data remove entity @s interaction

execute as @e[type=item,nbt={Item:{id:"infinity:power_stone"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["power_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["power_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=power_stone_ground] at @s run superpower add infinity:power_stone_ground @e[type=armor_stand,tag=power_stone_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:power_stone"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:power_stone"}}]
execute as @e[type=armor_stand,tag=power_stone_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=power_stone_ground_interaction] on target run give @s infinity:power_stone 1
execute as @e[type=minecraft:interaction,tag=power_stone_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=power_stone_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=power_stone_ground_interaction] run data remove entity @s interaction

execute as @e[type=item,nbt={Item:{id:"infinity:reality_stone"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["reality_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["reality_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=reality_stone_ground] at @s run superpower add infinity:reality_stone_ground @e[type=armor_stand,tag=reality_stone_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:reality_stone"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:reality_stone"}}]
execute as @e[type=armor_stand,tag=reality_stone_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=reality_stone_ground_interaction] on target run give @s infinity:reality_stone 1
execute as @e[type=minecraft:interaction,tag=reality_stone_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=reality_stone_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=reality_stone_ground_interaction] run data remove entity @s interaction

execute as @e[type=item,nbt={Item:{id:"infinity:time_stone"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["time_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["time_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=time_stone_ground] at @s run superpower add infinity:time_stone_ground @e[type=armor_stand,tag=time_stone_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:time_stone"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:time_stone"}}]
execute as @e[type=armor_stand,tag=time_stone_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=time_stone_ground_interaction] on target run give @s infinity:time_stone 1
execute as @e[type=minecraft:interaction,tag=time_stone_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=time_stone_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=time_stone_ground_interaction] run data remove entity @s interaction

execute as @e[type=item,nbt={Item:{id:"infinity:soul_stone"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["soul_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["soul_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=soul_stone_ground] at @s run superpower add infinity:soul_stone_ground @e[type=armor_stand,tag=soul_stone_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:soul_stone"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:soul_stone"}}]
execute as @e[type=armor_stand,tag=soul_stone_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=soul_stone_ground_interaction] on target run give @s infinity:soul_stone 1
execute as @e[type=minecraft:interaction,tag=soul_stone_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=soul_stone_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=soul_stone_ground_interaction] run data remove entity @s interaction

execute as @e[type=item,nbt={Item:{id:"infinity:mind_stone"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["mind_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["mind_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=mind_stone_ground] at @s run superpower add infinity:mind_stone_ground @e[type=armor_stand,tag=mind_stone_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:mind_stone"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:mind_stone"}}]
execute as @e[type=armor_stand,tag=mind_stone_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=mind_stone_ground_interaction] on target run give @s infinity:mind_stone 1
execute as @e[type=minecraft:interaction,tag=mind_stone_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=mind_stone_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=mind_stone_ground_interaction] run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] at @s if data entity @s attack run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["reality_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["reality_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=reality_stone_ground] at @s run superpower add infinity:reality_stone_ground @e[type=armor_stand,tag=reality_stone_ground]
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] at @s if data entity @s attack run particle minecraft:dust 1.0 0.15 0.1 2.0 ~ ~0.2 ~ 0.3 0.3 0.3 1 50 force
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] at @s if data entity @s attack run particle minecraft:flash ~ ~0.2 ~ 0 0 0 0 1 force
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] if data entity @s attack run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] if data entity @s attack run kill @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] run data remove entity @s attack

execute as @e[type=item,nbt={Item:{id:"infinity:aether"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["aether_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["aether_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=aether_ground] at @s run superpower add infinity:aether_ground @e[type=armor_stand,tag=aether_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:aether"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:aether"}}]
execute as @e[type=armor_stand,tag=aether_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] on target run give @s infinity:aether 1
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=aether_ground_interaction] run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] at @s if data entity @s attack run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["space_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["space_stone_ground_interaction"]}]}
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] at @s if data entity @s attack run particle minecraft:flash ~ ~0.2 ~ 0 0 0 0 1 force
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] at @s if data entity @s attack run particle minecraft:dust 0.4 0.75 1.0 2.0 ~ ~0.2 ~ 0.3 0.3 0.3 1 50 force
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=armor_stand,tag=space_stone_ground] at @s run superpower add infinity:space_stone_ground @e[type=armor_stand,tag=space_stone_ground]
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] if data entity @s attack run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] if data entity @s attack run kill @s
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] run data remove entity @s attack

execute as @e[type=item,nbt={Item:{id:"infinity:tesseract"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["tesseract_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["tesseract_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=tesseract_ground] at @s run superpower add infinity:tesseract_ground @e[type=armor_stand,tag=tesseract_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:tesseract"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:tesseract"}}]
execute as @e[type=armor_stand,tag=tesseract_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] on target run give @s infinity:tesseract 1
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=tesseract_ground_interaction] run data remove entity @s interaction

execute as @e[type=item,nbt={Item:{id:"infinity:orb"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["orb_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["orb_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=orb_ground] at @s run superpower add infinity:orb_ground @e[type=armor_stand,tag=orb_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:orb"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:orb"}}]
execute as @e[type=armor_stand,tag=orb_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=orb_ground_interaction] on target run give @s infinity:orb 1
execute as @e[type=minecraft:interaction,tag=orb_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=orb_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=orb_ground_interaction] run data remove entity @s interaction

execute as @e[type=item,nbt={Item:{id:"infinity:empty_scepter"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["empty_scepter_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["empty_scepter_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=empty_scepter_ground] at @s run superpower add infinity:empty_scepter_ground @e[type=armor_stand,tag=empty_scepter_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:empty_scepter"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:empty_scepter"}}]
execute as @e[type=armor_stand,tag=empty_scepter_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=empty_scepter_ground_interaction] on target run give @s infinity:empty_scepter 1
execute as @e[type=minecraft:interaction,tag=empty_scepter_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=empty_scepter_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=empty_scepter_ground_interaction] run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["mind_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["mind_stone_ground_interaction"]}]}
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["empty_scepter_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["empty_scepter_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=mind_stone_ground] at @s run superpower add infinity:mind_stone_ground @e[type=armor_stand,tag=mind_stone_ground]
execute as @e[type=armor_stand,tag=empty_scepter_ground] at @s run superpower add infinity:empty_scepter_ground @e[type=armor_stand,tag=empty_scepter_ground]
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run particle minecraft:dust 1.0 0.9 0.1 2.0 ~ ~0.2 ~ 0.3 0.3 0.3 1 50 force
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run particle minecraft:flash ~ ~0.2 ~ 0 0 0 0 1 force
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] if data entity @s attack run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] if data entity @s attack run kill @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] run data remove entity @s attack

execute as @e[type=item,nbt={Item:{id:"infinity:scepter"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["scepter_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["scepter_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=scepter_ground] at @s run superpower add infinity:scepter_ground @e[type=armor_stand,tag=scepter_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:scepter"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:scepter"}}]
execute as @e[type=armor_stand,tag=scepter_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] on target run give @s infinity:scepter 1
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=scepter_ground_interaction] run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] at @s if data entity @s attack run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["time_stone_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["time_stone_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=time_stone_ground] at @s run superpower add infinity:time_stone_ground @e[type=armor_stand,tag=time_stone_ground]
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] at @s if data entity @s attack run particle minecraft:dust 0.2 1.0 0.3 2.0 ~ ~0.2 ~ 0.3 0.3 0.3 1 50 force
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] at @s if data entity @s attack run particle minecraft:flash ~ ~0.2 ~ 0 0 0 0 1 force
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] at @s if data entity @s attack run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] if data entity @s attack run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] if data entity @s attack run kill @s
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] run data remove entity @s attack

execute as @e[type=item,nbt={Item:{id:"infinity:eye_of_agamotto"}}] at @s run summon armor_stand ~ ~ ~ {DisabledSlots:0,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Tags:["eye_of_agamotto_ground"],Passengers:[{id:"minecraft:interaction",width:0.4f,height:-0.7f,Tags:["eye_of_agamotto_ground_interaction"]}]}
execute as @e[type=armor_stand,tag=eye_of_agamotto_ground] at @s run superpower add infinity:eye_of_agamotto_ground @e[type=armor_stand,tag=eye_of_agamotto_ground]
execute as @e[type=item,nbt={Item:{id:"infinity:eye_of_agamotto"}}] at @s run kill @e[type=item,nbt={Item:{id:"infinity:eye_of_agamotto"}}]
execute as @e[type=armor_stand,tag=eye_of_agamotto_ground] at @s if entity @p[distance=..0.5] run tp @s ~ ~ ~ facing entity @p[distance=..1] feet
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] on target run give @s infinity:eye_of_agamotto 1
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] if data entity @s interaction run execute as @s on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] if data entity @s interaction run kill @s
execute as @e[type=minecraft:interaction,tag=eye_of_agamotto_ground_interaction] run data remove entity @s interaction

execute as @e[type=minecraft:villager,tag=!giveninfinitymaps] run function infinity:map_give

execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{sanctummap:1b}}]}] run function infinity:map_replace_sanctum
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{norsemap:1b}}]}] run function infinity:map_replace_norse
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{moragmap:1b}}]}] run function infinity:map_replace_morag
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{aethermap:1b}}]}] run function infinity:map_replace_aether
execute if entity @p[nbt={Inventory:[{id:"minecraft:map",tag:{sanctuarymap:1b}}]}] run function infinity:map_replace_sanctuary

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