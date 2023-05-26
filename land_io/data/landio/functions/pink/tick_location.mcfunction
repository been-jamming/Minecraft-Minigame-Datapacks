#Functions of main pink loop executed at ground level

#Steal territory from other teams if the player killed them
execute if block ~ ~-1 ~ red_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace red_concrete
execute if block ~ ~-1 ~ red_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace red_concrete_powder
execute if block ~ ~-1 ~ orange_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace orange_concrete
execute if block ~ ~-1 ~ orange_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace orange_concrete_powder
execute if block ~ ~-1 ~ yellow_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace yellow_concrete
execute if block ~ ~-1 ~ yellow_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace yellow_concrete_powder
execute if block ~ ~-1 ~ lime_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace lime_concrete
execute if block ~ ~-1 ~ lime_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace lime_concrete_powder
execute if block ~ ~-1 ~ green_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace green_concrete
execute if block ~ ~-1 ~ green_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace green_concrete_powder
execute if block ~ ~-1 ~ light_blue_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace light_blue_concrete
execute if block ~ ~-1 ~ light_blue_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace light_blue_concrete_powder
execute if block ~ ~-1 ~ blue_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace blue_concrete
execute if block ~ ~-1 ~ blue_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace blue_concrete_powder
execute if block ~ ~-1 ~ pink_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 pink_concrete replace pink_concrete
execute if block ~ ~-1 ~ pink_concrete_powder unless block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace pink_concrete_powder

#If the player is running and is standing on a new block, place update armor stands
execute if entity @s[tag=running] unless block ~ ~-1 ~ pink_concrete_powder run function landio:pink/place_updates

#If the player is starting to run, mark last location it with an armor stand and set status to running
execute if entity @s[tag=!running] unless block ~ ~-1 ~ pink_concrete align xyz run summon marker ~0.5 ~ ~0.5 {Marker: 1b, Invisible: 1b, Tags: ["pink_last_pos"]}

#Update the block below the player if it is not concrete
execute unless block ~ ~-1 ~ pink_concrete unless block ~ ~-1 ~ pink_concrete_powder run setblock ~ ~-1 ~ pink_concrete_powder

#Check if the player should DIE
execute at @p[gamemode=adventure, team=!pink] if block ~ ~-1 ~ pink_concrete_powder run function landio:pink/kill
execute at @p[gamemode=adventure, team=!pink] if block ~ ~-2 ~ pink_concrete_powder run function landio:pink/kill

#If the player is not standing on concrete, set their status to running and remove filled status
execute unless block ~ ~-1 ~ pink_concrete run tag @s add running
execute if entity @s[tag=running] run tag @s remove filled0
execute if entity @s[tag=running] run tag @s remove filled1

#If the player finishes running, fill in the areas and set their status to not running
execute if entity @s[tag=running] if block ~ ~-1 ~ pink_concrete run function landio:pink/fill

