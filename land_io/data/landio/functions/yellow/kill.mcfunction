#Gives death message and sets up flag for when a person dies
execute unless entity @p[team=yellow, tag=dead] run tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@p[team=yellow]"}]
tag @p[team=yellow] add dead

