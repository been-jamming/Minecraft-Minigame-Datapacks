#Place the update armor stands using relative coordinates
execute align xyz positioned ~0.5 ~-1 ~0.5 facing entity @e[tag=green_last_pos] feet positioned ^1 ^ ^0.7 align xyz run summon marker ~0.5 ~ ~0.5 {Tags: ["green_update0"]}
execute align xyz positioned ~0.5 ~-1 ~0.5 facing entity @e[tag=green_last_pos] feet positioned ^-1 ^ ^0.7 align xyz run summon marker ~0.5 ~ ~0.5 {Tags: ["green_update1"]}
execute as @e[tag=green_last_pos] align xyz run tp ~0.5 ~-1 ~0.5

