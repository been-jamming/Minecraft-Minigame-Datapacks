#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=green, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=green]"}]
tag @p[team=green] add dead

