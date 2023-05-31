#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=TEAM] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace FILL
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 FILL replace black_concrete

