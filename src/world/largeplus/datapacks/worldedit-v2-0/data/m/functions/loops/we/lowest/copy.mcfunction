#get pos
execute as @e[tag=lowest-copy] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=lowest-copy] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=lowest-copy] store result score @s Z run data get entity @s Pos[2]

#tp
execute as @e[tag=lowest-copy] at @s if score @s X < #Lowest X run tp @s ~1 ~ ~
execute as @e[tag=lowest-copy] at @s if score @s X > #Lowest X run tp @s ~-1 ~ ~

execute as @e[tag=lowest-copy] at @s if score @s Y < #Lowest Y run tp @s ~ ~1 ~
execute as @e[tag=lowest-copy] at @s if score @s Y > #Lowest Y run tp @s ~ ~-1 ~

execute as @e[tag=lowest-copy] at @s if score @s Z < #Lowest Z run tp @s ~ ~ ~1
execute as @e[tag=lowest-copy] at @s if score @s Z > #Lowest Z run tp @s ~ ~ ~-1

execute as @e[tag=lowest-copy] at @s unless score @s X = #Lowest X run function m:loops/we/lowest/copy
execute as @e[tag=lowest-copy] at @s unless score @s Y = #Lowest Y run function m:loops/we/lowest/copy
execute as @e[tag=lowest-copy] at @s unless score @s Z = #Lowest Z run function m:loops/we/lowest/copy

execute as @e[tag=lowest-copy] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z run clone ~ ~-1 ~ ~ ~-2 ~ ~ 254 ~ replace move
execute as @e[tag=lowest-copy] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z run setblock ~ ~-1 ~ structure_block{name:"copy",posX:0,posY:1,posZ:0,rotation:"NONE",mirror:"NONE",mode:"SAVE",ignoreEntities:1b}
execute as @e[tag=lowest-copy] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z store result block ~ ~-1 ~ sizeX int 1 run scoreboard players get #Size X
execute as @e[tag=lowest-copy] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z store result block ~ ~-1 ~ sizeY int 1 run scoreboard players get #Size Y
execute as @e[tag=lowest-copy] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z store result block ~ ~-1 ~ sizeZ int 1 run scoreboard players get #Size Z
execute as @e[tag=lowest-copy] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z run setblock ~ ~-2 ~ redstone_block
execute as @e[tag=lowest-copy] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z run clone ~ 254 ~ ~ 255 ~ ~ ~-2 ~ replace move

kill @e[tag=we-copy]