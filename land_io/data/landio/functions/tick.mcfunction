###Main game loop

##Update the game for players which are running so that they die first in a 1-on-1 with someone not running
##The update order between any pairs of running players is uniformly random

#Select randomly and uniformly between the entity tagged "rng0" and the one tagged "rng1"
tag @e[tag=rng, sort=random, limit=1] add rng_selection

#If the entity tagged "rng0" is selected, update running players in the standard order
execute if entity @p[team=red, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:red/tick
execute if entity @p[team=orange, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:orange/tick
execute if entity @p[team=yellow, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:yellow/tick
execute if entity @p[team=lime, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:lime/tick
execute if entity @p[team=green, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:green/tick
execute if entity @p[team=aqua, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:aqua/tick
execute if entity @p[team=blue, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:blue/tick
execute if entity @p[team=pink, tag=running] if entity @e[tag=rng0, tag=rng_selection] run function landio:pink/tick

#If the entity tagged "rng1" is selected, update running players in the opposite order
execute if entity @p[team=pink, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:pink/tick
execute if entity @p[team=blue, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:blue/tick
execute if entity @p[team=aqua, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:aqua/tick
execute if entity @p[team=green, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:green/tick
execute if entity @p[team=lime, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:lime/tick
execute if entity @p[team=yellow, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:yellow/tick
execute if entity @p[team=orange, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:orange/tick
execute if entity @p[team=red, tag=running] if entity @e[tag=rng1, tag=rng_selection] run function landio:red/tick

#Restore the random number generation
tag @e[tag=rng] remove rng_selection

#Tick each individual team
execute if entity @p[team=red, tag=!running] run function landio:red/tick
execute if entity @p[team=orange, tag=!running] run function landio:orange/tick
execute if entity @p[team=yellow, tag=!running] run function landio:yellow/tick
execute if entity @p[team=lime, tag=!running] run function landio:lime/tick
execute if entity @p[team=green, tag=!running] run function landio:green/tick
execute if entity @p[team=aqua, tag=!running] run function landio:aqua/tick
execute if entity @p[team=blue, tag=!running] run function landio:blue/tick
execute if entity @p[team=pink, tag=!running] run function landio:pink/tick

#Respawn dead players
function landio:red/respawn
function landio:orange/respawn
function landio:yellow/respawn
function landio:lime/respawn
function landio:green/respawn
function landio:aqua/respawn
function landio:blue/respawn
function landio:pink/respawn 
