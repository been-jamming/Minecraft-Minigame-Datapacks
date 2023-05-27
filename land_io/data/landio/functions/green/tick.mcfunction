#Main green loop

#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=green] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace green_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 green_concrete replace black_concrete

#If the player's score is zero, kill the player
execute if score @p[gamemode=adventure, team=green] score matches 0 run tag @p[gamemode=adventure, team=green] add dead

#If the player is one block too high, run the main tick logic one block lower
execute as @p[gamemode=adventure, team=green, tag=!dead] at @s unless block ~ ~-1 ~ air run function landio:green/tick_location
execute as @p[gamemode=adventure, team=green, tag=!dead] at @s if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function landio:green/tick_location

#Set the player's ticked flag
tag @s add ticked

