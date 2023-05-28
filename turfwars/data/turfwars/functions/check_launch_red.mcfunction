#Get the player's position
execute store result score @s position run data get entity @s Pos[0]

#If the player is launched and landed, kill the slime they are riding and update their tag
execute if entity @s[tag=launched] at @s as @e[type=slime, sort=nearest, limit=1] at @s unless block ~ ~-1 ~ air run tp @s ~ ~-1000 ~
execute if entity @s[tag=launched] at @s unless block ~ ~-1 ~ air run tag @s remove launched

#If the player is in the wrong territory and not being launched, launch them!
execute if score @s[tag=!launched] position <= @e[tag=territory, limit=1] position at @s run function turfwars:launch_red

