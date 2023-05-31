#Teleport the player to a random spawn location unless the block is occupied by a player's path
execute if entity @p[team=yellow, tag=dead] at @e[type=marker, tag=respawn, sort=random] unless block ~ ~-1 ~ red_concrete_powder unless block ~ ~-1 ~ orange_concrete_powder unless block ~ ~-1 ~ yellow_concrete_powder unless block ~ ~-1 ~ lime_concrete_powder unless block ~ ~-1 ~ green_concrete_powder unless block ~ ~-1 ~ light_blue_concrete_powder unless block ~ ~-1 ~ blue_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder unless entity @a[gamemode=adventure, team=!yellow, distance=..5] run tp @p[team=yellow] ~ ~ ~

#Remove the player's path blocks
execute if entity @p[team=yellow, tag=dead] at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace yellow_concrete_powder

#Set the block below the player to their territory
execute at @p[team=yellow, tag=dead] run setblock ~ ~-1 ~ yellow_concrete

#Remove the player's dead tag
tag @p[team=yellow] remove dead

