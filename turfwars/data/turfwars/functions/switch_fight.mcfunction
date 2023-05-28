#Increment the round counter
scoreboard players add # round 1

#Reset the phase timer
scoreboard players set # phase_time 1800

#Give each player a bow and an arrow
give @a[gamemode=adventure] bow{Unbreakable: 1, Enchantments:[{id:"minecraft:infinity",lvl:1s}]}
give @a[gamemode=adventure] arrow

#Set the fight flag
tag @e[tag=turf] remove build
tag @e[tag=turf] add fight

