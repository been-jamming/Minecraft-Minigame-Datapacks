#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=pink] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace pink_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace black_concrete

