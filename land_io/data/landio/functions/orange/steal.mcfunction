#Check if the block below is another team's path.
#If so, steal their territory and kill them
execute if block ~ ~-1 ~ red_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace red_concrete
#execute if block ~ ~-1 ~ red_concrete_powder at @s run function landio:red/kill
execute if block ~ ~-1 ~ red_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace red_concrete_powder
execute if block ~ ~-1 ~ orange_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace orange_concrete
#execute if block ~ ~-1 ~ orange_concrete_powder at @s run function landio:orange/kill
execute if block ~ ~-1 ~ orange_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace orange_concrete_powder
execute if block ~ ~-1 ~ yellow_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace yellow_concrete
#execute if block ~ ~-1 ~ yellow_concrete_powder at @s run function landio:yellow/kill
execute if block ~ ~-1 ~ yellow_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace yellow_concrete_powder
execute if block ~ ~-1 ~ lime_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace lime_concrete
#execute if block ~ ~-1 ~ lime_concrete_powder at @s run function landio:lime/kill
execute if block ~ ~-1 ~ lime_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace lime_concrete_powder
execute if block ~ ~-1 ~ green_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace green_concrete
#execute if block ~ ~-1 ~ green_concrete_powder at @s run function landio:green/kill
execute if block ~ ~-1 ~ green_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace green_concrete_powder
execute if block ~ ~-1 ~ light_blue_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace light_blue_concrete
#execute if block ~ ~-1 ~ light_blue_concrete_powder at @s run function landio:aqua/kill
execute if block ~ ~-1 ~ light_blue_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace light_blue_concrete_powder
execute if block ~ ~-1 ~ blue_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace blue_concrete
#execute if block ~ ~-1 ~ blue_concrete_powder at @s run function landio:blue/kill
execute if block ~ ~-1 ~ blue_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace blue_concrete_powder
execute if block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 orange_concrete replace pink_concrete
#execute if block ~ ~-1 ~ pink_concrete_powder at @s run function landio:pink/kill
execute if block ~ ~-1 ~ pink_concrete_powder at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete replace pink_concrete_powder

