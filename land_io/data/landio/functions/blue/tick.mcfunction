#Main blue loop

#If the player is one block too high, run the main tick logic one block lower
execute as @p[gamemode=adventure, team=blue] at @s unless block ~ ~-1 ~ air run function landio:blue/tick_location
execute as @p[gamemode=adventure, team=blue] at @s if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function landio:blue/tick_location

#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=blue] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace blue_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 blue_concrete replace black_concrete

#If the player's score is zero, set the player's dead flag
execute if score @p[gamemode=adventure, team=blue] score matches 0 run tag @p[gamemode=adventure, team=blue] add dead
