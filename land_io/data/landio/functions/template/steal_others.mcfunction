#Steal territory from other teams if the player killed them
execute unless block ~ ~-1 ~ PATH run function landio:TEAM/steal
execute positioned ~ ~-1 ~ unless block ~ ~-1 ~ PATH run function landio:TEAM/steal

