###Main game loop ##Update the game for players which are running so that they die first in a 1-on-1 with someone not running
##The update order between any pairs of running players is uniformly random

#Select randomly and uniformly between the entity tagged "rng0" and the one tagged "rng1"
tag @e[tag=rng, sort=random, limit=1] add rng_selection

##If the entity tagged "rng0" is selected, update running players in the standard order

#First update players who are running, so that they die first
execute if entity @p[team=red, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:red/tick
execute if entity @p[team=orange, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:orange/tick
execute if entity @p[team=yellow, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:yellow/tick
execute if entity @p[team=lime, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:lime/tick
execute if entity @p[team=green, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:green/tick
execute if entity @p[team=aqua, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:aqua/tick
execute if entity @p[team=blue, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:blue/tick
execute if entity @p[team=pink, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:pink/tick

#Update the players who are not running
execute if entity @p[team=red, tag=!running, tag=!ticked] if entity @e[tag=rng0, tag=rng_selection] run function landio:red/tick
execute if entity @p[team=orange, tag=!running, tag=!ticked] if entity @e[tag=rng0, tag=rng_selection] run function landio:orange/tick
execute if entity @p[team=yellow, tag=!running, tag=!ticked] if entity @e[tag=rng0, tag=rng_selection] run function landio:yellow/tick
execute if entity @p[team=lime, tag=!running, tag=!ticked] if entity @e[tag=rng0, tag=rng_selection] run function landio:lime/tick
execute if entity @p[team=green, tag=!running, tag=!ticked] if entity @e[tag=rng0, tag=rng_selection] run function landio:green/tick
execute if entity @p[team=aqua, tag=!running, tag=!ticked] if entity @e[tag=rng0, tag=rng_selection] run function landio:aqua/tick
execute if entity @p[team=blue, tag=!running, tag=!ticked] if entity @e[tag=rng0, tag=rng_selection] run function landio:blue/tick
execute if entity @p[team=pink, tag=!running, tag=!ticked] if entity @e[tag=rng0, tag=rng_selection] run function landio:pink/tick

##If the entity tagged "rng1" is selected, update running players in the opposite order

#First update players who are running, so that they die first
execute if entity @p[team=pink, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:pink/tick
execute if entity @p[team=blue, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:blue/tick
execute if entity @p[team=aqua, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:aqua/tick
execute if entity @p[team=green, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:green/tick
execute if entity @p[team=lime, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:lime/tick
execute if entity @p[team=yellow, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:yellow/tick
execute if entity @p[team=orange, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:orange/tick
execute if entity @p[team=red, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:red/tick

#Update the players who are not running
execute if entity @p[team=pink, tag=!running, tag=!ticked] if entity @e[tag=rng1, tag=rng_selection] run function landio:pink/tick
execute if entity @p[team=blue, tag=!running, tag=!ticked] if entity @e[tag=rng1, tag=rng_selection] run function landio:blue/tick
execute if entity @p[team=aqua, tag=!running, tag=!ticked] if entity @e[tag=rng1, tag=rng_selection] run function landio:aqua/tick
execute if entity @p[team=green, tag=!running, tag=!ticked] if entity @e[tag=rng1, tag=rng_selection] run function landio:green/tick
execute if entity @p[team=lime, tag=!running, tag=!ticked] if entity @e[tag=rng1, tag=rng_selection] run function landio:lime/tick
execute if entity @p[team=yellow, tag=!running, tag=!ticked] if entity @e[tag=rng1, tag=rng_selection] run function landio:yellow/tick
execute if entity @p[team=orange, tag=!running, tag=!ticked] if entity @e[tag=rng1, tag=rng_selection] run function landio:orange/tick
execute if entity @p[team=red, tag=!running, tag=!ticked] if entity @e[tag=rng1, tag=rng_selection] run function landio:red/tick

#Restore the random number generation
tag @e[tag=rng] remove rng_selection

#For players who are not running, check again to see if they can steal territory
execute as @p[team=red, tag=!running] at @s run function landio:red/steal_others
execute as @p[team=orange, tag=!running] at @s run function landio:orange/steal_others
execute as @p[team=yellow, tag=!running] at @s run function landio:yellow/steal_others
execute as @p[team=lime, tag=!running] at @s run function landio:lime/steal_others
execute as @p[team=green, tag=!running] at @s run function landio:green/steal_others
execute as @p[team=aqua, tag=!running] at @s run function landio:aqua/steal_others
execute as @p[team=blue, tag=!running] at @s run function landio:blue/steal_others
execute as @p[team=pink, tag=!running] at @s run function landio:pink/steal_others

#Compute the score of each player
function landio:red/score
function landio:orange/score
function landio:yellow/score
function landio:lime/score
function landio:green/score
function landio:aqua/score
function landio:blue/score
function landio:pink/score

#Kill any player with a score of 0
tag @a[gamemode=adventure, scores={score=0}] add dead

#Respawn dead players
function landio:red/respawn
function landio:orange/respawn
function landio:yellow/respawn
function landio:lime/respawn
function landio:green/respawn
function landio:aqua/respawn
function landio:blue/respawn
function landio:pink/respawn 

#Compute the number of minutes and seconds left in the game
scoreboard players operation #minutes game_time = # game_time
scoreboard players operation #minutes game_time /= #1200 constants
scoreboard players operation #seconds game_time = # game_time
scoreboard players operation #seconds game_time %= #1200 constants
scoreboard players operation #seconds game_time /= #20 constants

#Display the time left at the bottom of the screen
execute unless score # game_time matches ..600 if score #seconds game_time matches 10.. run title @a actionbar [{"score": {"name": "#minutes", "objective": "game_time"}, "color": "yellow"}, {"text": ":", "color": "yellow"}, {"score": {"name": "#seconds", "objective": "game_time"}, "color": "yellow"}]
execute unless score # game_time matches ..600 if score #seconds game_time matches ..9 run title @a actionbar [{"score": {"name": "#minutes", "objective": "game_time"}, "color": "yellow"}, {"text": ":0", "color": "yellow"}, {"score": {"name": "#seconds", "objective": "game_time"}, "color": "yellow"}]
execute if score # game_time matches ..600 if score #seconds game_time matches 10.. run title @a actionbar [{"score": {"name": "#minutes", "objective": "game_time"}, "color": "red"}, {"text": ":", "color": "red"}, {"score": {"name": "#seconds", "objective": "game_time"}, "color": "red"}]
execute if score # game_time matches ..600 if score #seconds game_time matches ..9 run title @a actionbar [{"score": {"name": "#minutes", "objective": "game_time"}, "color": "red"}, {"text": ":0", "color": "red"}, {"score": {"name": "#seconds", "objective": "game_time"}, "color": "red"}]

#Decrement the timer
scoreboard players remove # game_time 1

#Reset the ticked flag
tag @a remove ticked

