#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=aqua, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=aqua]"}]
tag @p[team=aqua] add dead

