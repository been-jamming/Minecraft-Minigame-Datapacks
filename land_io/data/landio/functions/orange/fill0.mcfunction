#If the fill reaches the end of the map, end the fill
execute if block ~ ~ ~ air run tag @s add filled0

#Mark the current block as searched
execute unless block ~ ~ ~ air run setblock ~ ~-2 ~ orange_concrete

#Search adjacent blocks
execute unless entity @s[tag=filled0] unless block ~1 ~-2 ~ orange_concrete positioned ~1 ~ ~ run function landio:orange/fill0
execute unless entity @s[tag=filled0] unless block ~-1 ~-2 ~ orange_concrete positioned ~-1 ~ ~ run function landio:orange/fill0
execute unless entity @s[tag=filled0] unless block ~ ~-2 ~1 orange_concrete positioned ~ ~ ~1 run function landio:orange/fill0
execute unless entity @s[tag=filled0] unless block ~ ~-2 ~-1 orange_concrete positioned ~ ~ ~-1 run function landio:orange/fill0

