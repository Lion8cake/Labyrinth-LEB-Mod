execute store result score @s X run data get entity @s Pos[0]
execute store result score @s Y run data get entity @s Pos[1]
execute store result score @s Z run data get entity @s Pos[2]

execute if score @s X < #highest-middle X run tp @s ~1 ~ ~
execute if score @s Y < #highest-middle Y if score @s X = #highest-middle X run tp @s ~ ~1 ~
execute if score @s Z < #highest-middle Z if score @s X = #highest-middle X if score @s Y = #highest-middle Y run tp @s ~ ~ ~1

execute as @e[tag=we-middle-pos] at @s if score @e[tag=we-middle-pos-2x,limit=1] X < #highest-middle X run tp @s ~0.5 ~ ~
execute as @e[tag=we-middle-pos] at @s if score @e[tag=we-middle-pos-2x,limit=1] Y < #highest-middle Y if score @e[tag=we-middle-pos-2x,limit=1] X = #highest-middle X run tp @s ~ ~0.5 ~
execute as @e[tag=we-middle-pos] at @s if score @e[tag=we-middle-pos-2x,limit=1] Z < #highest-middle Z if score @e[tag=we-middle-pos-2x,limit=1] X = #highest-middle X if score @e[tag=we-middle-pos-2x,limit=1] Y = #highest-middle Y run tp @s ~ ~ ~0.5

execute store result score @s X run data get entity @s Pos[0]
execute store result score @s Y run data get entity @s Pos[1]
execute store result score @s Z run data get entity @s Pos[2]
execute unless score @s X = #highest-middle X as @s at @s run function m:loops/we/lowest/middle-middle
execute unless score @s Y = #highest-middle Y as @s at @s run function m:loops/we/lowest/middle-middle
execute unless score @s Z = #highest-middle Z as @s at @s run function m:loops/we/lowest/middle-middle

execute if score @s X = #highest-middle X if score @s Y = #highest-middle Y if score @s Z = #highest-middle Z as @e[tag=we-middle-pos] at @s run function m:loops/we/finish/middle