#Initialize teams
team remove red
team remove blue
team add red {"text": "Red", "color": "red"}
team add blue {"text": "Blue", "color": "blue"}
team modify red color red
team modify blue color aqua

#Initialize scoreboard objectives
scoreboard objectives remove red_wool_mined
scoreboard objectives add red_wool_mined minecraft.mined:minecraft.red_wool
scoreboard objectives remove blue_wool_mined
scoreboard objectives add blue_wool_mined minecraft.mined:minecraft.light_blue_wool
scoreboard objectives remove deaths
scoreboard objectives add deaths deathCount
scoreboard objectives remove position
scoreboard objectives add position dummy
scoreboard objectives remove game_time
scoreboard objectives add game_time dummy
scoreboard players set # game_time 0
scoreboard objectives remove phase_time
scoreboard objectives add phase_time dummy
scoreboard players set # phase_time 600
scoreboard objectives remove round
scoreboard objectives add round dummy
scoreboard players set # round 0
scoreboard objectives remove constants
scoreboard objectives add constants dummy
scoreboard players set #1200 constants 1200
scoreboard players set #20 constants 20
scoreboard objectives remove score
scoreboard objectives add score dummy {"text": "Score", "color": "gold"}
scoreboard objectives setdisplay sidebar score
scoreboard players set Red score 45
scoreboard players set Blue score 45
team join red Red
team join blue Blue

#Set the turf blocks
execute at @e[tag=turf] run fill ~ ~ ~ ~44 ~ ~44 light_blue_concrete
execute at @e[tag=turf] run fill ~45 ~ ~ ~89 ~ ~44 red_concrete

#Kill all territory markers
kill @e[tag=territory]

#Summon the territory marker
execute at @e[tag=turf] run summon marker ~44 ~ ~ {Tags: ["territory"]}

#Create teams
function turfwars:add_red_team

#Set player spawnpoints
execute at @e[tag=red_spawn] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[tag=blue_spawn] run spawnpoint @a[team=blue] ~ ~ ~

#Clear inventories
clear @a

#Give everyone building materials
execute as @a[team=red] run function turfwars:set_inventory_build_red
execute as @a[team=blue] run function turfwars:set_inventory_build_blue

#Reset turf flags
tag @e[tag=turf] remove fight
tag @e[tag=turf] add build

