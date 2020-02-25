execute as @s store result score @s fb_add_fuel run clear @s minecraft:coal
execute as @s run scoreboard players operation @s fb_fuel += @s fb_add_fuel
tellraw @s ["",{"text":"Added ","color":"blue"},{"score":{"name":"@s","objective":"fb_add_fuel"},"color":"dark_red"},{"text":" fuel!","color":"blue"}]
scoreboard players set @s fb_add_fuel 0