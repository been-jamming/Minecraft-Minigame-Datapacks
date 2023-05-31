#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=orange] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace orange_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace black_concrete

