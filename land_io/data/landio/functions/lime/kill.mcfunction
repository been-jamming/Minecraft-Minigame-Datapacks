#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=lime, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=lime]"}]
tag @p[team=lime] add dead

