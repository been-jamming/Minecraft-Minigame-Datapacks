#Teleport the player to a random spawn location unless the block is occupied by a player's path
execute if entity @p[team=TEAM, tag=dead] at @e[type=marker, tag=respawn, sort=random] unless block ~ ~-1 ~ red_concrete_powder unless block ~ ~-1 ~ orange_concrete_powder unless block ~ ~-1 ~ yellow_concrete_powder unless block ~ ~-1 ~ lime_concrete_powder unless block ~ ~-1 ~ green_concrete_powder unless block ~ ~-1 ~ light_blue_concrete_powder unless block ~ ~-1 ~ blue_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder unless entity @a[gamemode=adventure, team=!TEAM, distance=..5] run tp @p[team=TEAM] ~ ~ ~

#Set the block below the player to their territory
execute at @p[team=TEAM, tag=dead] run setblock ~ ~-1 ~ FILL

#Remove the player's dead tag
tag @p[team=TEAM] remove dead

