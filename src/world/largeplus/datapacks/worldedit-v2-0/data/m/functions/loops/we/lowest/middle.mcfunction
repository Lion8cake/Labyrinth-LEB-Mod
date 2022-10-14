execute store result score @s X run data get entity @s Pos[0]
execute store result score @s Y run data get entity @s Pos[1]
execute store result score @s Z run data get entity @s Pos[2]

execute if score @s X > #lowest-middle X run tp @s ~-1 ~ ~
execute if score @s Y > #lowest-middle Y if score @s X = #lowest-middle X run tp @s ~ ~-1 ~
execute if score @s Z > #lowest-middle Z if score @s X = #lowest-middle X if score @s Y = #lowest-middle Y run tp @s ~ ~ ~-1

execute store result score @s X run data get entity @s Pos[0]
execute store result score @s Y run data get entity @s Pos[1]
execute store result score @s Z run data get entity @s Pos[2]
execute unless score @s X = #lowest-middle X as @s at @s run function m:loops/we/lowest/middle
execute unless score @s Y = #lowest-middle Y as @s at @s run function m:loops/we/lowest/middle
execute unless score @s Z = #lowest-middle Z as @s at @s run function m:loops/we/lowest/middle

execute if score @s X = #lowest-middle X as @s at @s if score @s Y = #lowest-middle Y as @s at @s if score @s Z = #lowest-middle Z as @s at @s unless entity @e[tag=we-middle-pos-2x] run summon marker ~ ~ ~ {Tags:["we-middle-pos-2x","we-select","we-middle"]}
execute if score @s X = #lowest-middle X as @s at @s if score @s Y = #lowest-middle Y as @s at @s if score @s Z = #lowest-middle Z as @e[tag=we-middle-pos-2x] at @s run function m:loops/we/lowest/middle-middle