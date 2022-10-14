execute as @e[tag=we-selection1] at @s run summon marker ~ ~ ~ {Tags:["we-middle1","we-middle","we-select"]}
execute as @e[tag=we-selection2] at @s run summon marker ~ ~ ~ {Tags:["we-middle2","we-middle","we-select"]}

execute as @e[tag=we-middle] at @s store result score @s X run data get entity @s Pos[0]
execute as @e[tag=we-middle] at @s store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=we-middle] at @s store result score @s Z run data get entity @s Pos[2]

#lowest
execute if score @e[tag=we-middle1,limit=1] X <= @e[tag=we-middle2,limit=1] X run scoreboard players operation #lowest-middle X = @e[tag=we-middle1,limit=1] X
execute if score @e[tag=we-middle1,limit=1] Y <= @e[tag=we-middle2,limit=1] Y run scoreboard players operation #lowest-middle Y = @e[tag=we-middle1,limit=1] Y
execute if score @e[tag=we-middle1,limit=1] Z <= @e[tag=we-middle2,limit=1] Z run scoreboard players operation #lowest-middle Z = @e[tag=we-middle1,limit=1] Z

execute if score @e[tag=we-middle1,limit=1] X > @e[tag=we-middle2,limit=1] X run scoreboard players operation #lowest-middle X = @e[tag=we-middle2,limit=1] X
execute if score @e[tag=we-middle1,limit=1] Y > @e[tag=we-middle2,limit=1] Y run scoreboard players operation #lowest-middle Y = @e[tag=we-middle2,limit=1] Y
execute if score @e[tag=we-middle1,limit=1] Z > @e[tag=we-middle2,limit=1] Z run scoreboard players operation #lowest-middle Z = @e[tag=we-middle2,limit=1] Z

#highest
execute if score @e[tag=we-middle1,limit=1] X >= @e[tag=we-middle2,limit=1] X run scoreboard players operation #highest-middle X = @e[tag=we-middle1,limit=1] X
execute if score @e[tag=we-middle1,limit=1] Y >= @e[tag=we-middle2,limit=1] Y run scoreboard players operation #highest-middle Y = @e[tag=we-middle1,limit=1] Y
execute if score @e[tag=we-middle1,limit=1] Z >= @e[tag=we-middle2,limit=1] Z run scoreboard players operation #highest-middle Z = @e[tag=we-middle1,limit=1] Z

execute if score @e[tag=we-middle1,limit=1] X < @e[tag=we-middle2,limit=1] X run scoreboard players operation #highest-middle X = @e[tag=we-middle2,limit=1] X
execute if score @e[tag=we-middle1,limit=1] Y < @e[tag=we-middle2,limit=1] Y run scoreboard players operation #highest-middle Y = @e[tag=we-middle2,limit=1] Y
execute if score @e[tag=we-middle1,limit=1] Z < @e[tag=we-middle2,limit=1] Z run scoreboard players operation #highest-middle Z = @e[tag=we-middle2,limit=1] Z

#Size
scoreboard players operation #size-middle X = #highest-middle X
scoreboard players operation #size-middle Y = #highest-middle Y
scoreboard players operation #size-middle Z = #highest-middle Z

scoreboard players operation #size-middle X -= #lowest-middle X
scoreboard players operation #size-middle Y -= #lowest-middle Y
scoreboard players operation #size-middle Z -= #lowest-middle Z

scoreboard players operation #size-middle X /= #2 WE
scoreboard players operation #size-middle Y /= #2 WE
scoreboard players operation #size-middle Z /= #2 WE

execute as @e[tag=we-middle1] at @s unless entity @e[tag=we-middle-pos] run summon marker ~ ~ ~ {Tags:["we-middle-pos","we-select","we-middle"]}
execute as @e[tag=we-middle-pos] at @s run function m:loops/we/lowest/middle