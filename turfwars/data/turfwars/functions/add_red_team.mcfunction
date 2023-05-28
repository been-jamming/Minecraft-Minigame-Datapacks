#Add a random player in adventure mode to the red team
team join red @r[gamemode=adventure, team=]

#If there are more players in adventure mode not on a team, add them starting with one on the blue team
execute if entity @p[gamemode=adventure, team=] run function turfwars:add_blue_team

