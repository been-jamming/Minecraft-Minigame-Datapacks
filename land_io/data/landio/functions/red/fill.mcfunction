#Replace path with concrete, copy their territory to the scratch layers, kill the last_pos armor stand, and fill the areas
execute at @e[tag=corner] run fill ~ ~ ~ ~29 ~ ~29 red_concrete replace red_concrete_powder
execute at @e[tag=corner] run fill ~ ~-2 ~ ~29 ~-3 ~29 air
execute at @e[tag=corner] run clone ~ ~ ~ ~29 ~ ~29 ~ ~-2 ~ filtered red_concrete
execute at @e[tag=corner] run clone ~ ~ ~ ~29 ~ ~29 ~ ~-3 ~ filtered red_concrete
kill @e[tag=red_last_pos]
execute at @e[tag=red_update0] unless block ~ ~-2 ~ red_concrete run function landio:red/fill0
execute at @e[tag=red_update1] unless block ~ ~-2 ~ red_concrete run function landio:red/fill1

#If the filled flags are set, clear the scratch layers
execute if entity @s[tag=filled0] at @e[tag=corner] run fill ~ ~-2 ~ ~29 ~-2 ~29 air
execute if entity @s[tag=filled1] at @e[tag=corner] run fill ~ ~-3 ~ ~29 ~-3 ~29 air

#Copy from the sratch layers onto the board
execute at @e[tag=corner] run clone ~ ~-2 ~ ~29 ~-2 ~29 ~ ~ ~ masked move
execute at @e[tag=corner] run clone ~ ~-3 ~ ~29 ~-3 ~29 ~ ~ ~ masked move

#Kill the update markers!
kill @e[tag=red_update0]
kill @e[tag=red_update1]

#Set the filled status
tag @s add filled0
tag @s add filled1

#Set the player to not running
tag @s remove running

