#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=TEAM, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=TEAM]"}]
tag @p[team=TEAM] add dead

