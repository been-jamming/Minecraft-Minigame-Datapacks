#Functions of main blue loop executed at ground level

#Steal territory from other teams if the player killed them
execute unless block ~ ~-1 ~ blue_concrete_powder run function landio:blue/steal

#If the player is running and is standing on a new block, place update armor stands
execute if entity @s[tag=running] unless block ~ ~-1 ~ blue_concrete_powder run function landio:blue/place_updates

#If the player is starting to run, mark last location it with an armor stand and set status to running
execute if entity @s[tag=!running] unless block ~ ~-1 ~ blue_concrete align xyz run summon marker ~0.5 ~ ~0.5 {Marker: 1b, Invisible: 1b, Tags: ["blue_last_pos"]}

#Update the block below the player if it is not concrete
execute unless block ~ ~-1 ~ blue_concrete unless block ~ ~-1 ~ blue_concrete_powder run setblock ~ ~-1 ~ blue_concrete_powder

#Check if the player should DIE
execute at @p[gamemode=adventure, team=!blue] if block ~ ~-1 ~ blue_concrete_powder run function landio:blue/kill
execute at @p[gamemode=adventure, team=!blue] if block ~ ~-2 ~ blue_concrete_powder run function landio:blue/kill

#If the player is not standing on concrete, set their status to running and remove filled status
execute unless block ~ ~-1 ~ blue_concrete run tag @s add running
execute if entity @s[tag=running] run tag @s remove filled0
execute if entity @s[tag=running] run tag @s remove filled1

#If the player finishes running, fill in the areas and set their status to not running
execute if entity @s[tag=running] if block ~ ~-1 ~ blue_concrete run function landio:blue/fill

