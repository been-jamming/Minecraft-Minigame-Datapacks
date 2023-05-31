#Functions of main TEAM loop executed at ground level

#Steal territory from other teams if the player killed them
execute unless block ~ ~-1 ~ PATH run function landio:TEAM/steal

#If the player is running and is standing on a new block, place update armor stands
execute if entity @s[tag=running] unless block ~ ~-1 ~ PATH run function landio:TEAM/place_updates

#If the player is starting to run, mark last location it with an armor stand and set status to running
execute if entity @s[tag=!running] unless block ~ ~-1 ~ FILL align xyz run summon marker ~0.5 ~ ~0.5 {Tags: ["TEAM_last_pos"]}

#Update the block below the player if it is not concrete
execute unless block ~ ~-1 ~ FILL unless block ~ ~-1 ~ PATH run setblock ~ ~-1 ~ PATH

#Check if the player should DIE
execute at @a[gamemode=adventure, team=!TEAM, tag=!dead] if block ~ ~-1 ~ PATH run function landio:TEAM/kill
execute at @a[gamemode=adventure, team=!TEAM, tag=!dead] if block ~ ~-2 ~ PATH run function landio:TEAM/kill

#If the player is not standing on concrete, set their status to running and remove filled status
execute unless block ~ ~-1 ~ FILL run tag @s add running
execute if entity @s[tag=running] run tag @s remove filled0
execute if entity @s[tag=running] run tag @s remove filled1

#If the player finishes running, fill in the areas and set their status to not running
execute if entity @s[tag=running] if block ~ ~-1 ~ FILL run function landio:TEAM/fill

