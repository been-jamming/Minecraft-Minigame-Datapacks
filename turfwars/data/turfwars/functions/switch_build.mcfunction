#Reset the phase timer
scoreboard players set # phase_time 600

#Switch to build inventories
execute as @a[team=red] run function turfwars:set_inventory_build_red
execute as @a[team=blue] run function turfwars:set_inventory_build_blue

#Set the build flag
tag @e[tag=turf] remove fight
tag @e[tag=turf] add build

