#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=green] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace green_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 green_concrete replace black_concrete

