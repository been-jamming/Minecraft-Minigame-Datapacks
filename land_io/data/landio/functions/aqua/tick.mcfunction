#Main aqua loop

#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=aqua] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace light_blue_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 light_blue_concrete replace black_concrete

#If the player's score is zero, kill the player
execute if score @p[gamemode=adventure, team=aqua] score matches 0 run tag @p[gamemode=adventure, team=aqua] add dead

#If the player is one block too high, run the main tick logic one block lower
execute as @p[gamemode=adventure, team=aqua, tag=!dead] at @s unless block ~ ~-1 ~ air run function landio:aqua/tick_location
execute as @p[gamemode=adventure, team=aqua, tag=!dead] at @s if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function landio:aqua/tick_location

#Set the player's ticked flag
tag @s add ticked

