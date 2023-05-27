#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=blue, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=blue]"}]
tag @p[team=blue] add dead

