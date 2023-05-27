#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=pink, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=pink]"}]
tag @p[team=pink] add dead

