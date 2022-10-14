clone ~ ~-1 ~ ~ ~-1 ~ 0 -64 0 replace force
execute as @e[tag=we-selection1] at @s run summon marker ~ ~ ~ {Tags:["we-line"]}
execute as @e[tag=we-line] at @s run tp @s ~ ~ ~ facing entity @e[tag=we-selection2,sort=nearest,limit=1]
execute as @e[tag=we-line] at @s run function m:loops/we/find/line
kill @e[tag=we-line]