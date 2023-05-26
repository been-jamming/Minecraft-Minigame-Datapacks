#Gives death message and sets up flag for when a person dies
tellraw @a [{"selector": "@p"}, {"text": " caught ", "color": "white"}, {"selector": "@s"}]
tag @s add dead

