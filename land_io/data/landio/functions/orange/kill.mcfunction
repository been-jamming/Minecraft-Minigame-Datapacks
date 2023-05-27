#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=orange, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=orange]"}]
tag @p[team=orange] add dead

