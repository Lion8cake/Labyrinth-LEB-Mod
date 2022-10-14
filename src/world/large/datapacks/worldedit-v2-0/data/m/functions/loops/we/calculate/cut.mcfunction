#get positions
execute as @e[tag=we-selection1] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=we-selection1] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=we-selection1] store result score @s Z run data get entity @s Pos[2]

execute as @e[tag=we-selection2] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=we-selection2] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=we-selection2] store result score @s Z run data get entity @s Pos[2]

#get lowest pos
execute if score @e[tag=we-selection1,limit=1] X <= @e[tag=we-selection2,limit=1] X run scoreboard players operation #Lowest X = @e[tag=we-selection1,limit=1] X
execute unless score @e[tag=we-selection1,limit=1] X <= @e[tag=we-selection2,limit=1] X run scoreboard players operation #Lowest X = @e[tag=we-selection2,limit=1] X

execute if score @e[tag=we-selection1,limit=1] Y <= @e[tag=we-selection2,limit=1] Y run scoreboard players operation #Lowest Y = @e[tag=we-selection1,limit=1] Y
execute unless score @e[tag=we-selection1,limit=1] Y <= @e[tag=we-selection2,limit=1] Y run scoreboard players operation #Lowest Y = @e[tag=we-selection2,limit=1] Y

execute if score @e[tag=we-selection1,limit=1] Z <= @e[tag=we-selection2,limit=1] Z run scoreboard players operation #Lowest Z = @e[tag=we-selection1,limit=1] Z
execute unless score @e[tag=we-selection1,limit=1] Z <= @e[tag=we-selection2,limit=1] Z run scoreboard players operation #Lowest Z = @e[tag=we-selection2,limit=1] Z

#get highest pos
execute if score @e[tag=we-selection1,limit=1] X >= @e[tag=we-selection2,limit=1] X run scoreboard players operation #Highest X = @e[tag=we-selection1,limit=1] X
execute unless score @e[tag=we-selection1,limit=1] X >= @e[tag=we-selection2,limit=1] X run scoreboard players operation #Highest X = @e[tag=we-selection2,limit=1] X

execute if score @e[tag=we-selection1,limit=1] Y >= @e[tag=we-selection2,limit=1] Y run scoreboard players operation #Highest Y = @e[tag=we-selection1,limit=1] Y
execute unless score @e[tag=we-selection1,limit=1] Y >= @e[tag=we-selection2,limit=1] Y run scoreboard players operation #Highest Y = @e[tag=we-selection2,limit=1] Y

execute if score @e[tag=we-selection1,limit=1] Z >= @e[tag=we-selection2,limit=1] Z run scoreboard players operation #Highest Z = @e[tag=we-selection1,limit=1] Z
execute unless score @e[tag=we-selection1,limit=1] Z >= @e[tag=we-selection2,limit=1] Z run scoreboard players operation #Highest Z = @e[tag=we-selection2,limit=1] Z

#finished
execute as @e[tag=we-selection1] at @s run summon marker ~ ~ ~ {Tags:["lowest-cut","we-select"]}
function m:loops/we/lowest/cut