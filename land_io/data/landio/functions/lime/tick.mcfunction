#Main lime loop

#If the player is one block too high, run the main tick logic one block lower
execute as @p[gamemode=adventure, team=lime] at @s unless block ~ ~-1 ~ air run function landio:lime/tick_location
execute as @p[gamemode=adventure, team=lime] at @s if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function landio:lime/tick_location

#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=lime] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace lime_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 lime_concrete replace black_concrete

#If the player's score is zero, set the player's dead flag
execute if score @p[gamemode=adventure, team=lime] score matches 0 run tag @p[gamemode=adventure, team=lime] add dead

