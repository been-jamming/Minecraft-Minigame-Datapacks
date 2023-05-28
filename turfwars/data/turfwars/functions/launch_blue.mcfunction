#Spawn an entity for the player to ride, and adjust the entity's motion
summon slime ~ ~1 ~ {Tags: ["launch"], ActiveEffects: [{Id: 14, Amplifier: 0, Duration: -1, ShowParticles: 0b}]}
ride @s mount @e[tag=launch, tag=!ridden, limit=1]
data merge entity @e[tag=launch, tag=!ridden, limit=1] {Motion: [-1.5, 1.0, 0.0]}
tag @e[tag=launch, tag=!ridden] add ridden
tag @s add launched

