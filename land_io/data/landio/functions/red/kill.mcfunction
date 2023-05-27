#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=red, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=red]"}]
tag @p[team=red] add dead

