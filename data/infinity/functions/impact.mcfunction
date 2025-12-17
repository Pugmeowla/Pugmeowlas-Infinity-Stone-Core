# meteor:impact.mcfunction
# Run every tick or in a repeating function

# Detect falling blocks tagged as meteors that are on the ground
execute as @e[tag=meteorite,type=falling_block] at @s if block ~ ~-0.1 ~ minecraft:air run tag @s add inAir
execute as @e[tag=meteorite,type=falling_block,tag=!inAir] at @s run summon tnt ~ ~ ~ {Fuse:0}
execute as @e[tag=meteorite,type=falling_block,tag=!inAir] run kill @s
execute as @e[tag=meteorite,type=falling_block,tag=inAir] run tag @s remove inAir
