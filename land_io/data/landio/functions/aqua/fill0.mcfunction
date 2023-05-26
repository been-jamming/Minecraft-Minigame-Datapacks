#If the fill reaches the end of the map, end the fill
execute if block ~ ~ ~ air run tag @s add filled0

#Mark the current block as searched
execute unless block ~ ~ ~ air run setblock ~ ~-2 ~ light_blue_concrete

#Search adjacent blocks
execute unless entity @s[tag=filled0] unless block ~1 ~-2 ~ light_blue_concrete positioned ~1 ~ ~ run function landio:aqua/fill0
execute unless entity @s[tag=filled0] unless block ~-1 ~-2 ~ light_blue_concrete positioned ~-1 ~ ~ run function landio:aqua/fill0
execute unless entity @s[tag=filled0] unless block ~ ~-2 ~1 light_blue_concrete positioned ~ ~ ~1 run function landio:aqua/fill0
execute unless entity @s[tag=filled0] unless block ~ ~-2 ~-1 light_blue_concrete positioned ~ ~ ~-1 run function landio:aqua/fill0

