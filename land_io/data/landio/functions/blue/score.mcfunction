#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=blue] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace blue_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 blue_concrete replace black_concrete

