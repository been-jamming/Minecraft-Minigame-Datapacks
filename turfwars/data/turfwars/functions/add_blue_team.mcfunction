#Add a random player in adventure mode to the blue team
team join blue @r[gamemode=adventure, team=]

#If there are more players in adventure mode not on a team, add them starting with one on the red team
execute if entity @p[gamemode=adventure, team=] run function turfwars:add_red_team

