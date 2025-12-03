scoreboard players add @e[tag=snap] spawn 1
execute at @e[tag=snap,scores={spawn=5}] run particle firework ~ ~1 ~ 0 0 0 0.25 100 force
execute at @e[tag=snap,scores={spawn=5}] run playsound entity.wither.spawn master @a ~ ~ ~ 10000000 1
execute at @e[tag=snap,scores={spawn=5}] run playsound item.trident.thunder master @a ~ ~ ~ 10000000 0

execute at @e[tag=snap,scores={spawn=5},tag=half] as @e[ type=!marker, type=!armor_stand, type=!lightning_bolt, tag=!snapper] if predicate true_random run tag @s add snapped


execute at @e[tag=snap,scores={spawn=5},tag=hostile] as @e[type=#hostiles,tag=!snapper] run tag @s add snapped


execute as @e[tag=snapped,sort=random,limit=1,tag=!dissipating] if predicate random run tag @s add dissipating
execute at @e[tag=dissipating] run particle dust 1 1 1 1 ~ ~0.5 ~ 0.6 0.6 0.6 0 3 force
scoreboard players add @e[tag=dissipating] snap 1
execute as @e[tag=dissipating,scores={snap=100..}] at @s run function infinity:infinity/snap_dissipate
execute unless entity @e[tag=snapped] run kill @e[tag=snap,scores={spawn=100..}]