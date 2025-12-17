playsound minecraft:entity.panda.sneeze block @s

# Summon zombies with guaranteed identities
summon minecraft:zombie ~ ~ ~ {CustomName:'{"text":"Transfer Zombie","color":"green"}',CustomNameVisible:1b,Tags:["transfer_zombie"]}
summon minecraft:zombie ~ ~ ~ {CustomName:'{"text":"Pugmeowla Zombie","color":"purple"}',CustomNameVisible:1b,Tags:["pugmeowla_zombie"]}
summon minecraft:zombie ~ ~ ~ {CustomName:'{"text":"Dark Zombie","color":"black"}',CustomNameVisible:1b,Tags:["dark_zombie"]}

# Extra zombies (optional ambience)
summon minecraft:zombie ~ ~ ~
summon minecraft:zombie ~ ~ ~
summon minecraft:zombie ~ ~ ~

# Apply unique powers (guaranteed, no overlap)
execute as @e[type=zombie,tag=transfer_zombie,distance=..5] run superpower add infinity:trasferimento_zombie @s
execute as @e[type=zombie,tag=pugmeowla_zombie,distance=..5] run superpower add infinity:pugmeowla_zombie @s
execute as @e[type=zombie,tag=dark_zombie,distance=..5] run superpower add infinity:dark_zombie @s

# Shared setup
team join peaceful
execute as @e[type=zombie,distance=..5] run team join peaceful
execute as @e[type=zombie,distance=..5] run superpower add infinity:thanos_classic @s
