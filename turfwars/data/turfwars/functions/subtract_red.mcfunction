#Move the territory marker
scoreboard players operation @s round = # round
function turfwars:move_territory_up

#Increment Blue score
scoreboard players operation Blue score += # round

#Decrement Red score
scoreboard players operation Red score -= # round

#Remove a death from the executor
scoreboard players remove @s deaths 1

