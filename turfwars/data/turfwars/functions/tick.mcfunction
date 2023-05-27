#Summon markers around landed arrows
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~0.1 ~ ~ {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~-0.1 ~ ~ {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~ ~0.1 ~ {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~ ~-0.1 ~ {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~ ~ ~0.1 {Tags: ["arrow_intersect"]}
execute at @e[type=arrow, nbt={inGround: 1b}] run summon marker ~ ~ ~-0.1 {Tags: ["arrow_intersect"]}

#Delete arrows that are in the ground
kill @e[type=arrow, nbt={inGround: 1b}]

#Delete blocks that were shot if they are red or blue wool
execute at @e[tag=arrow_intersect] if block ~ ~ ~ red_wool align xyz run particle poof ~0.5 ~0.5 ~0.5 0 0 0 0 1
execute at @e[tag=arrow_intersect] if block ~ ~ ~ blue_wool align xyz run particle poof ~0.5 ~0.5 ~0.5 0 0 0 0 1
execute at @e[tag=arrow_intersect] if block ~ ~ ~ red_wool run setblock ~ ~ ~ air
execute at @e[tag=arrow_intersect] if block ~ ~ ~ blue_wool run setblock ~ ~ ~ air

#Delete the arrow intersect markers
kill @e[tag=arrow_intersect]

