#Functions of main green loop executed at ground level

#Steal territory from other teams if the player killed them
execute unless block ~ ~-1 ~ green_concrete_powder run function landio:green/steal

#If the player is running and is standing on a new block, place update armor stands
execute if entity @s[tag=running] unless block ~ ~-1 ~ green_concrete_powder run function landio:green/place_updates

#If the player is starting to run, mark last location it with an armor stand and set status to running
execute if entity @s[tag=!running] unless block ~ ~-1 ~ green_concrete align xyz run summon marker ~0.5 ~ ~0.5 {Marker: 1b, Invisible: 1b, Tags: ["green_last_pos"]}

#Update the block below the player if it is not concrete
execute unless block ~ ~-1 ~ green_concrete unless block ~ ~-1 ~ green_concrete_powder run setblock ~ ~-1 ~ green_concrete_powder

#Check if the player should DIE
execute at @p[gamemode=adventure, team=!green] if block ~ ~-1 ~ green_concrete_powder run function landio:green/kill
execute at @p[gamemode=adventure, team=!green] if block ~ ~-2 ~ green_concrete_powder run function landio:green/kill

#If the player is not standing on concrete, set their status to running and remove filled status
execute unless block ~ ~-1 ~ green_concrete run tag @s add running
execute if entity @s[tag=running] run tag @s remove filled0
execute if entity @s[tag=running] run tag @s remove filled1

#If the player finishes running, fill in the areas and set their status to not running
execute if entity @s[tag=running] if block ~ ~-1 ~ green_concrete run function landio:green/fill

