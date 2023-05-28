#Move the territory up by 1 for every point in player's round entry
execute as @e[tag=territory] at @s run tp ~1 ~ ~
execute at @e[tag=territory] run fill ~ ~ ~ ~ ~10 ~44 air replace red_wool
scoreboard players remove @s round 1
execute if score @s round matches 1.. run function turfwars:move_territory_up
