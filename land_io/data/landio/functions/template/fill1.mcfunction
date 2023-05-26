#If the fill reaches the end of the map, end the fill
execute if block ~ ~ ~ air run tag @s add filled1

#Mark the current block as searched
execute unless block ~ ~ ~ air run setblock ~ ~-3 ~ FILL

#Search adjacent blocks
execute unless entity @s[tag=filled1] unless block ~1 ~-3 ~ FILL positioned ~1 ~ ~ run function landio:TEAM/fill1
execute unless entity @s[tag=filled1] unless block ~-1 ~-3 ~ FILL positioned ~-1 ~ ~ run function landio:TEAM/fill1
execute unless entity @s[tag=filled1] unless block ~ ~-3 ~1 FILL positioned ~ ~ ~1 run function landio:TEAM/fill1
execute unless entity @s[tag=filled1] unless block ~ ~-3 ~-1 FILL positioned ~ ~ ~-1 run function landio:TEAM/fill1

