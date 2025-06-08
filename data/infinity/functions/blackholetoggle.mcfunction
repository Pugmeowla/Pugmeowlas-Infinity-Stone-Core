execute if score @a[tag=blackholetag,limit=1] blackholetoggle matches 0 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["blackhole"]}
execute if score @a[tag=blackholetag,limit=1] blackholetoggle matches 0 run tag @s add blackholeon
execute if score @a[tag=blackholetag,limit=1] blackholetoggle matches 2 run kill @e[tag=blackhole]
execute if score @a[tag=blackholetag,limit=1] blackholetoggle matches 2 run tag @s remove blackholeon
execute if score @a[tag=blackholetag,limit=1] blackholetoggle matches 2 run tag @a[tag=blackholetag,limit=1] add bh-2
execute if score @a[tag=blackholetag,limit=1] blackholetoggle matches 0 run tag @a[tag=blackholetag,limit=1] add bh-0
execute if score @a[tag=bh-2,limit=1] blackholetoggle matches 2 run scoreboard players set @a[tag=blackholetag,limit=1] blackholetoggle 0
execute if score @a[tag=bh-0,limit=1] blackholetoggle matches 0 run scoreboard players set @a[tag=blackholetag,limit=1] blackholetoggle 2
tag @a remove bh-2
tag @a remove bh-0
tag @a remove blackholetag