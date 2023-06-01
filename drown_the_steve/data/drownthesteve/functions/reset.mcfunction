clear @a
give @a bow{Enchantments: [{id: "minecraft:infinity", lvl: 1s}, {id: "minecraft:punch", lvl:2s}], Damage: 0, Unbreakable: 1} 1
execute as @a run effect give @s resistance infinite 255 true
execute as @a run effect give @s slow_falling infinite 0 true
give @a arrow 1
gamemode adventure @a

