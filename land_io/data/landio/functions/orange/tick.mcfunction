#Main orange loop

#If the player is one block too high, run the main tick logic one block lower
execute as @p[gamemode=adventure, team=orange, tag=!dead] at @s unless block ~ ~-1 ~ air run function landio:orange/tick_location
execute as @p[gamemode=adventure, team=orange, tag=!dead] at @s if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function landio:orange/tick_location

#Set the player's ticked flag
tag @s add ticked

