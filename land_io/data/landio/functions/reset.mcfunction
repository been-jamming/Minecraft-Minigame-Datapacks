#Resets the playing board

#Fill the top layer with white concrete
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 white_concrete

#Fill the bottom layers with air
execute at @e[tag=corner] run fill ~ ~-2 ~ ~29 ~-3 ~29 air

#Kill all relevant armor stands
kill @e[tag=update0]
kill @e[tag=update1]
kill @e[tag=last_pos]

#Reset player status
tag @a remove running
tag @a remove filled0
tag @a remove filled1
tag @a remove dead

#Create scoreboard objective
scoreboard objectives add game_time dummy
scoreboard objectives add constants dummy
scoreboard players set # game_time 3600
scoreboard players set #1200 constants 1200
scoreboard players set #20 constants 20

#Create teams
team add red {"text": "Red", "color": "red"}
team add orange {"text": "Orange", "color": "gold"}
team add yellow {"text": "Yellow", "color": "yellow"}
team add lime {"text": "Lime", "color": "green"}
team add green {"text": "Green", "color": "dark_green"}
team add aqua {"text": "Aqua", "color": "aqua"}
team add blue {"text": "Blue", "color": "blue"}
team add pink {"text": "Pink", "color": "light_purple"}
team modify red color red
team modify orange color gold
team modify yellow color yellow
team modify lime color green
team modify green color dark_green
team modify aqua color aqua
team modify blue color blue
team modify pink color light_purple

#Reset for each team
function landio:red/reset
function landio:orange/reset
function landio:yellow/reset
function landio:lime/reset
function landio:green/reset
function landio:aqua/reset
function landio:blue/reset
function landio:pink/reset

