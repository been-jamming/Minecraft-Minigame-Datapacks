#Clear the inventory
clear @s

#Give everyone building materials
give @s red_wool{CanPlaceOn: ["minecraft:red_concrete", "minecraft:red_wool"]} 32
give @s shears{Unbreakable: 1, CanDestroy: ["minecraft:red_wool"]} 1

