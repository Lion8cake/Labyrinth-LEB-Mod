execute unless predicate m:sneak if entity @e[tag=we-selection1] unless entity @e[tag=we-selection2] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["we-selection2","we-select"]}
execute unless predicate m:sneak unless entity @e[tag=we-selection1] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["we-selection1","we-select"]}

execute if predicate m:sneak unless block ~ ~ ~ air if entity @e[tag=we-selection1] unless entity @e[tag=we-selection2] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["we-selection2","we-select"]}
execute if predicate m:sneak unless block ~ ~ ~ air unless entity @e[tag=we-selection1] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["we-selection1","we-select"]}
execute if predicate m:sneak if block ~ ~ ~ air positioned ^ ^ ^0.5 run function m:loops/we/find