#get pos
execute as @e[tag=lowest-set] store result score @s X run data get entity @s Pos[0]
execute as @e[tag=lowest-set] store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=lowest-set] store result score @s Z run data get entity @s Pos[2]

#tp
execute as @e[tag=lowest-set] at @s if score @s X < #Lowest X run tp @s ~1 ~ ~
execute as @e[tag=lowest-set] at @s if score @s X > #Lowest X run tp @s ~-1 ~ ~

execute as @e[tag=lowest-set] at @s if score @s Y < #Lowest Y run tp @s ~ ~1 ~
execute as @e[tag=lowest-set] at @s if score @s Y > #Lowest Y run tp @s ~ ~-1 ~

execute as @e[tag=lowest-set] at @s if score @s Z < #Lowest Z run tp @s ~ ~ ~1
execute as @e[tag=lowest-set] at @s if score @s Z > #Lowest Z run tp @s ~ ~ ~-1

execute as @e[tag=lowest-set] at @s unless score @s X = #Lowest X run function m:loops/we/lowest/set
execute as @e[tag=lowest-set] at @s unless score @s Y = #Lowest Y run function m:loops/we/lowest/set
execute as @e[tag=lowest-set] at @s unless score @s Z = #Lowest Z run function m:loops/we/lowest/set

execute as @e[tag=lowest-set] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z run summon marker ~ ~ ~ {Tags:["set"]}
execute as @e[tag=lowest-set] at @s if score @s X = #Lowest X if score @s Y = #Lowest Y if score @s Z = #Lowest Z run function m:loops/we/loop/set
kill @e[tag=lowest-set]