execute as @e[tag=set] at @s run summon marker ~1 ~ ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=set] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~ ~1 {Tags:["set"]}
execute as @e[tag=set] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=set] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~1 ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=set] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=set] at @s run summon marker ~2 ~ ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=set] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~ ~2 {Tags:["set"]}
execute as @e[tag=set] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=set] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~2 ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=set] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=set] at @s run summon marker ~4 ~ ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=set] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~ ~4 {Tags:["set"]}
execute as @e[tag=set] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=set] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~4 ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=set] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=set] at @s run summon marker ~8 ~ ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=set] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~ ~8 {Tags:["set"]}
execute as @e[tag=set] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=set] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~8 ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=set] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=set] at @s run summon marker ~16 ~ ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=set] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~ ~16 {Tags:["set"]}
execute as @e[tag=set] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=set] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~16 ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=set] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=set] at @s run summon marker ~32 ~ ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=set] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~ ~32 {Tags:["set"]}
execute as @e[tag=set] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=set] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~32 ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=set] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=set] at @s run summon marker ~64 ~ ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=set] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~ ~64 {Tags:["set"]}
execute as @e[tag=set] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=set] at @s if score @s Z > #Highest Z run kill @s

execute as @e[tag=set] at @s run summon marker ~ ~64 ~ {Tags:["set"]}
execute as @e[tag=set] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=set] at @s if score @s Y > #Highest Y run kill @s

execute store result score #set-blocks WE if entity @e[tag=set]

execute if score @p hollow matches 1 as @e[tag=set] at @s positioned ~1 ~ ~ if entity @e[tag=set,distance=..0.5] positioned ~-2 ~ ~ if entity @e[tag=set,distance=..0.5] positioned ~1 ~1 ~ if entity @e[tag=set,distance=..0.5] positioned ~ ~-2 ~ if entity @e[tag=set,distance=..0.5] positioned ~ ~1 ~1 if entity @e[tag=set,distance=..0.5] positioned ~ ~ ~-2 if entity @e[tag=set,distance=..0.5] run kill @s

execute as @e[tag=set] at @s unless block 0 -63 0 #m:special if blocks ~ ~ ~ ~ ~ ~ 0 -63 0 all run clone 0 -64 0 0 -64 0 ~ ~ ~
execute as @e[tag=set] at @s if block 0 -63 0 air run clone 0 -64 0 0 -64 0 ~ ~ ~
execute as @e[tag=set] at @s if block 0 -63 0 jigsaw if block ~ ~ ~ air run clone 0 -64 0 0 -64 0 ~ ~ ~
execute as @e[tag=set] at @s if block 0 -63 0 barrier unless block ~ ~ ~ air run clone 0 -64 0 0 -64 0 ~ ~ ~

setblock 0 -64 0 bedrock
tellraw @a[scores={set=1..}] [{"text":"operation complete (","color":"dark_green"},{"score":{"name": "#set-blocks","objective": "WE"},"color":"green","bold":true},{"text":"blocks changed)"}]
tellraw @a[scores={hollow=1..}] [{"text":"operation complete (","color":"dark_green"},{"score":{"name": "#set-blocks","objective": "WE"},"color":"green","bold":true},{"text":"blocks changed)"}]
kill @e[tag=set]