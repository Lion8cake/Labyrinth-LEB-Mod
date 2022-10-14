execute as @e[tag=we-selection1] at @s run summon marker ~ ~ ~ {Tags:["we-copy1","we-copy","we-select"]}
execute as @e[tag=we-selection2] at @s run summon marker ~ ~ ~ {Tags:["we-copy2","we-copy","we-select"]}

#get positions
execute as @e[tag=we-copy1] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=we-copy1] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=we-copy1] store result score @s Z run data get entity @s Pos[2]

execute as @e[tag=we-copy2] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=we-copy2] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=we-copy2] store result score @s Z run data get entity @s Pos[2]

#get lowest pos
execute if score @e[tag=we-copy1,limit=1] X <= @e[tag=we-copy2,limit=1] X run scoreboard players operation #Lowest X = @e[tag=we-copy1,limit=1] X
execute unless score @e[tag=we-copy1,limit=1] X <= @e[tag=we-copy2,limit=1] X run scoreboard players operation #Lowest X = @e[tag=we-copy2,limit=1] X

execute if score @e[tag=we-copy1,limit=1] Y <= @e[tag=we-copy2,limit=1] Y run scoreboard players operation #Lowest Y = @e[tag=we-copy1,limit=1] Y
execute unless score @e[tag=we-copy1,limit=1] Y <= @e[tag=we-copy2,limit=1] Y run scoreboard players operation #Lowest Y = @e[tag=we-copy2,limit=1] Y

execute if score @e[tag=we-copy1,limit=1] Z <= @e[tag=we-copy2,limit=1] Z run scoreboard players operation #Lowest Z = @e[tag=we-copy1,limit=1] Z
execute unless score @e[tag=we-copy1,limit=1] Z <= @e[tag=we-copy2,limit=1] Z run scoreboard players operation #Lowest Z = @e[tag=we-copy2,limit=1] Z

#get highest pos
execute if score @e[tag=we-copy1,limit=1] X >= @e[tag=we-copy2,limit=1] X run scoreboard players operation #Size X = @e[tag=we-copy1,limit=1] X
execute unless score @e[tag=we-copy1,limit=1] X >= @e[tag=we-copy2,limit=1] X run scoreboard players operation #Size X = @e[tag=we-copy2,limit=1] X

execute if score @e[tag=we-copy1,limit=1] Y >= @e[tag=we-copy2,limit=1] Y run scoreboard players operation #Size Y = @e[tag=we-copy1,limit=1] Y
execute unless score @e[tag=we-copy1,limit=1] Y >= @e[tag=we-copy2,limit=1] Y run scoreboard players operation #Size Y = @e[tag=we-copy2,limit=1] Y

execute if score @e[tag=we-copy1,limit=1] Z >= @e[tag=we-copy2,limit=1] Z run scoreboard players operation #Size Z = @e[tag=we-copy1,limit=1] Z
execute unless score @e[tag=we-copy1,limit=1] Z >= @e[tag=we-copy2,limit=1] Z run scoreboard players operation #Size Z = @e[tag=we-copy2,limit=1] Z

#get Size
scoreboard players operation #Size X -= #Lowest X
scoreboard players operation #Size Y -= #Lowest Y
scoreboard players operation #Size Z -= #Lowest Z

scoreboard players add #Size X 1
scoreboard players add #Size Y 1
scoreboard players add #Size Z 1

#finished
execute as @e[tag=we-copy1] at @s run summon marker ~ ~ ~ {Tags:["lowest-copy","we-select"]}
function m:loops/we/lowest/copy