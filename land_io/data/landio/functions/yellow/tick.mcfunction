#Main yellow loop

#If the player is one block too high, run the main tick logic one block lower
execute as @p[gamemode=adventure, team=yellow] at @s unless block ~ ~-1 ~ air run function landio:yellow/tick_location
execute as @p[gamemode=adventure, team=yellow] at @s if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function landio:yellow/tick_location

#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=yellow] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace yellow_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 yellow_concrete replace black_concrete

#If the player's score is zero, set the player's dead flag
execute if score @p[gamemode=adventure, team=yellow] score matches 0 run tag @p[gamemode=adventure, team=yellow] add dead

