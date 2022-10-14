execute as @a[scores={click=1},nbt={SelectedItem:{tag:{selection:1b}}}] at @s positioned ~ ~5 ~ positioned as @s anchored eyes run function m:loops/we/find
execute as @a[scores={click=1},nbt={SelectedItem:{tag:{Paste:1b}}}] at @s anchored eyes run function m:loops/we/find/paste
execute as @a[scores={click=1},nbt={SelectedItem:{tag:{selectionDelete:1b}}}] at @s run kill @e[tag=we-select.falling]
execute as @a[scores={click=1},nbt={SelectedItem:{tag:{selectionDelete:1b}}}] at @s run kill @e[tag=we-select]

#functions
execute as @a[scores={sphere=1..}] at @s run clone ~ ~-1 ~ ~ ~-1 ~ 0 -64 0
execute as @a[scores={circle=1..}] at @s run clone ~ ~-1 ~ ~ ~-1 ~ 0 -64 0
execute as @a[scores={set=1..}] at @s run clone ~ ~-1 ~ ~ ~-1 ~ 0 -64 0
execute as @a[scores={hollow=1..}] at @s run clone ~ ~-1 ~ ~ ~-1 ~ 0 -64 0

execute as @a[scores={sphere=1..}] at @s run clone ~ ~-2 ~ ~ ~-2 ~ 0 -63 0
execute as @a[scores={circle=1..}] at @s run clone ~ ~-2 ~ ~ ~-2 ~ 0 -63 0
execute as @a[scores={set=1..}] at @s run clone ~ ~-2 ~ ~ ~-2 ~ 0 -63 0
execute as @a[scores={hollow=1..}] at @s run clone ~ ~-2 ~ ~ ~-2 ~ 0 -63 0

execute as @a[scores={sphere=1..}] at @s run function m:loops/we/loop/sphere
execute as @a[scores={circle=1..}] at @s run function m:loops/we/loop/circle
execute as @a[scores={copy=1..}] at @s if entity @e[tag=we-selection1] if entity @e[tag=we-selection2] run function m:loops/we/calculate/copy
execute as @a[scores={cut=1..}] at @s if entity @e[tag=we-selection1] if entity @e[tag=we-selection2] run function m:loops/we/calculate/cut
execute as @a[scores={middle=1..}] at @s if entity @e[tag=we-selection1] if entity @e[tag=we-selection2] run function m:loops/we/calculate/middle
execute as @a[scores={set=1..}] at @s if entity @e[tag=we-selection1] if entity @e[tag=we-selection2] run function m:loops/we/calculate/set
execute as @a[scores={hollow=1..}] at @s if entity @e[tag=we-selection1] if entity @e[tag=we-selection2] run function m:loops/we/calculate/set
execute as @a[scores={line=1..}] at @s if entity @e[tag=we-selection1] if entity @e[tag=we-selection2] run function m:loops/we/calculate/line

execute as @e[tag=we-middle] at @s run kill @s

scoreboard players reset @a[scores={copy=1..}] copy
scoreboard players reset @a[scores={cut=1..}] cut
scoreboard players reset @a[scores={middle=1..}] middle
scoreboard players reset @a[scores={set=1..}] set
scoreboard players reset @a[scores={line=1..}] line
scoreboard players reset @a[scores={hollow=1..}] hollow


execute as @a[scores={pos1=1..}] at @s unless entity @e[tag=we-selection1] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["we-selection1","we-select"]}
execute as @a[scores={pos2=1..}] at @s unless entity @e[tag=we-selection2] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["we-selection2","we-select"]}

scoreboard players reset @a[scores={pos1=1..}] pos1
scoreboard players reset @a[scores={pos2=1..}] pos2

execute as @e[tag=we-selection1] at @s if entity @a[distance=..20] unless block ~ ~ ~ stone run summon falling_block ~0.0001 ~ ~0.0001 {Time:-1,BlockState:{Name:"minecraft:stone"},Glowing:true,NoGravity:1,DropItem:0b,Tags:["we-select.falling"]}
execute as @e[tag=we-selection2] at @s if entity @a[distance=..20] unless block ~ ~ ~ stone run summon falling_block ~0.0001 ~ ~0.0001 {Time:-1,BlockState:{Name:"minecraft:stone"},Glowing:true,NoGravity:1,DropItem:0b,Tags:["we-select.falling"]}

execute as @e[tag=we-selection1] at @s if entity @a[distance=..20] if block ~ ~ ~ stone run summon falling_block ~0.0001 ~ ~0.0001 {Time:-1,BlockState:{Name:"minecraft:blackstone"},Glowing:true,NoGravity:1,DropItem:0b,Tags:["we-select.falling"]}
execute as @e[tag=we-selection2] at @s if entity @a[distance=..20] if block ~ ~ ~ stone run summon falling_block ~0.0001 ~ ~0.0001 {Time:-1,BlockState:{Name:"minecraft:blackstone"},Glowing:true,NoGravity:1,DropItem:0b,Tags:["we-select.falling"]}