#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=lime] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace lime_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 lime_concrete replace black_concrete

