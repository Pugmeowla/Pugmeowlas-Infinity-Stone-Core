# METEOR STORM WITH REAL FALLING BLOCKS
# 20 meteors within ±50 blocks X/Z

# Meteor 1
execute at @s run summon minecraft:falling_block ^10 ^70 ^10 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 2
execute at @s run summon minecraft:falling_block ^-15 ^70 ^20 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 3
execute at @s run summon minecraft:falling_block ^25 ^70 ^-10 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 4
execute at @s run summon minecraft:falling_block ^-30 ^70 ^-25 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 5
execute at @s run summon minecraft:falling_block ^40 ^70 ^5 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 6
execute at @s run summon minecraft:falling_block ^-5 ^70 ^-40 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 7
execute at @s run summon minecraft:falling_block ^20 ^70 ^30 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 8
execute at @s run summon minecraft:falling_block ^-35 ^70 ^15 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 9
execute at @s run summon minecraft:falling_block ^45 ^70 ^-30 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Meteor 10
execute at @s run summon minecraft:falling_block ^-20 ^70 ^-50 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Additional 10 meteors
execute at @s run summon minecraft:falling_block ^5 ^70 ^-5 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^-10 ^70 ^15 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^15 ^70 ^-15 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^-25 ^70 ^10 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^35 ^70 ^-5 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^-15 ^70 ^-20 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^10 ^70 ^25 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^-5 ^70 ^-35 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^20 ^70 ^-40 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}
execute at @s run summon minecraft:falling_block ^-30 ^70 ^20 {BlockState:{Name:"minecraft:deepslate"},Motion:[0.0,-1.0,0.0],Tags:["meteorite"]}

# Particles for all meteors
execute as @e[tag=meteorite] at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0 20 force @a[distance=..50]
execute as @e[tag=meteorite] at @s run particle campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0.025 10 force @a[distance=..50]
