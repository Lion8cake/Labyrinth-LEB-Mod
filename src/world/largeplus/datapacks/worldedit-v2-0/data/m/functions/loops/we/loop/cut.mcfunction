execute as @e[tag=cut] at @s run summon marker ~1 ~ ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=cut] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~ ~1 {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=cut] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~1 ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=cut] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=cut] at @s run summon marker ~2 ~ ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=cut] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~ ~2 {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=cut] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~2 ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=cut] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=cut] at @s run summon marker ~4 ~ ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=cut] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~ ~4 {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=cut] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~4 ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=cut] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=cut] at @s run summon marker ~8 ~ ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=cut] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~ ~8 {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=cut] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~8 ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=cut] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=cut] at @s run summon marker ~16 ~ ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=cut] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~ ~16 {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=cut] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~16 ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=cut] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=cut] at @s run summon marker ~32 ~ ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=cut] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~ ~32 {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=cut] at @s if score @s Y > #Highest Y run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~32 ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=cut] at @s if score @s Z > #Highest Z run kill @s


execute as @e[tag=cut] at @s run summon marker ~64 ~ ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=cut] at @s if score @s X > #Highest X run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~ ~64 {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Z run data get entity @s Pos[2]
execute as @e[tag=cut] at @s if score @s Z > #Highest Z run kill @s

execute as @e[tag=cut] at @s run summon marker ~ ~64 ~ {Tags:["cut"]}
execute as @e[tag=cut] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=cut] at @s if score @s Y > #Highest Y run kill @s



execute as @e[tag=cut] at @s run setblock ~ ~ ~ air
kill @e[tag=cut]