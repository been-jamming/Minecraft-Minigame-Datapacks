#Summon markers around landed arrows
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~0.1 ~ ~ {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~-0.1 ~ ~ {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~ ~0.1 ~ {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~ ~-0.1 ~ {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~ ~ ~0.1 {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~ ~ ~-0.1 {Tags: ["arrow_intersect"]}

#Delete arrows that are in the ground
kill @e[type=arrow, nbt={inGround: 1b}]

#Delete blocks that were shot if they are red or blue wool
execute at @e[tag=arrow_intersect] if block ~ ~ ~ red_wool align xyz run particle poof ~0.5 ~0.5 ~0.5 0 0 0 0 1
execute at @e[tag=arrow_intersect] if block ~ ~ ~ light_blue_wool align xyz run particle poof ~0.5 ~0.5 ~0.5 0 0 0 0 1
execute at @e[tag=arrow_intersect] if block ~ ~ ~ red_wool run setblock ~ ~ ~ air
execute at @e[tag=arrow_intersect] if block ~ ~ ~ light_blue_wool run setblock ~ ~ ~ air

#Delete the arrow intersect markers
kill @e[tag=arrow_intersect]

#Kill any wool items on the ground
kill @e[type=item, nbt={Item: {id: "minecraft:red_wool"}}]
kill @e[type=item, nbt={Item: {id: "minecraft:light_blue_wool"}}]

#Give players any wool they broke
execute as @a[scores={red_wool_mined=1..}] run give @s red_wool{CanPlaceOn: ["minecraft:red_concrete", "minecraft:red_wool"]} 1
execute as @a[scores={red_wool_mined=1..}] run scoreboard players remove @s red_wool_mined 1
execute as @a[scores={blue_wool_mined=1..}] run give @s light_blue_wool{CanPlaceOn: ["minecraft:light_blue_concrete", "minecraft:light_blue_wool"]} 1
execute as @a[scores={blue_wool_mined=1..}] run scoreboard players remove @s blue_wool_mined 1

#If a player dies, move turf and remove a death
execute as @a[team=red, scores={deaths=1..}] run function turfwars:subtract_red
execute as @a[team=blue, scores={deaths=1..}] run function turfwars:subtract_blue

#Update the turf
execute at @e[tag=territory] run fill ~1 ~ ~ ~45 ~ ~44 red_concrete replace light_blue_concrete
execute at @e[tag=territory] run fill ~ ~ ~ ~-44 ~ ~44 light_blue_concrete replace red_concrete

#Update timers
scoreboard players add # game_time 1
scoreboard players remove # phase_time 1

#If the game is in build time and the phase timer reaches 0, switch to fight time
execute if entity @e[tag=turf, tag=build] if score # phase_time matches ..0 run function turfwars:switch_fight

#If the game is in fight time and the phase timer reaches 0, switch to build time
execute if entity @e[tag=turf, tag=fight] if score # phase_time matches ..0 run function turfwars:switch_build

#Store the x coordinate of the territory marker
execute store result score @e[tag=territory] position run data get entity @e[tag=territory, limit=1] Pos[0] 1

#Launch the red players if they are in the wrong territory
execute as @a[team=red] run function turfwars:check_launch_red

#Launch the blue players if they are in the wrong territory
execute as @a[team=blue] run function turfwars:check_launch_blue

#Compute the minutes and seconds left in the phase
scoreboard players operation #minutes phase_time = # phase_time
scoreboard players operation #minutes phase_time /= #1200 constants
scoreboard players operation #seconds phase_time = # phase_time
scoreboard players operation #seconds phase_time %= #1200 constants
scoreboard players operation #seconds phase_time /= #20 constants

#Display the time left of the build phase
execute if entity @e[tag=turf, tag=build] if score #seconds phase_time matches 10.. run title @a actionbar [{"text": "Build ", "color": "yellow"}, {"score": {"name": "#minutes", "objective": "phase_time"}, "color": "yellow"}, {"text": ":", "color": "yellow"}, {"score": {"name": "#seconds", "objective": "phase_time"}, "color": "yellow"}]
execute if entity @e[tag=turf, tag=build] if score #seconds phase_time matches ..9 run title @a actionbar [{"text": "Build ", "color": "yellow"}, {"score": {"name": "#minutes", "objective": "phase_time"}, "color": "yellow"}, {"text": ":0", "color": "yellow"}, {"score": {"name": "#seconds", "objective": "phase_time"}, "color": "yellow"}]

#Display the time left of the fight phase
execute if entity @e[tag=turf, tag=fight] if score #seconds phase_time matches 10.. run title @a actionbar [{"text": "Fight ", "color": "yellow"}, {"score": {"name": "#minutes", "objective": "phase_time"}, "color": "yellow"}, {"text": ":", "color": "yellow"}, {"score": {"name": "#seconds", "objective": "phase_time"}, "color": "yellow"}]
execute if entity @e[tag=turf, tag=fight] if score #seconds phase_time matches ..9 run title @a actionbar [{"text": "Fight ", "color": "yellow"}, {"score": {"name": "#minutes", "objective": "phase_time"}, "color": "yellow"}, {"text": ":0", "color": "yellow"}, {"score": {"name": "#seconds", "objective": "phase_time"}, "color": "yellow"}]

