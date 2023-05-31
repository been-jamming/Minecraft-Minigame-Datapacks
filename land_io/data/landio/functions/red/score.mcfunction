#Update the player's score
execute at @e[tag=corner] store result score @p[gamemode=adventure, team=red] score run fill ~ ~ ~ ~29 ~ ~29 black_concrete replace red_concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 red_concrete replace black_concrete

