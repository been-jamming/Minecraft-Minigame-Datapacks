#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=yellow] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace yellow_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 yellow_concrete replace black_concrete

