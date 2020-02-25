#execute as @s run scoreboard players operation @s fb_r0 -= @s fb_y

# x
execute as @s run scoreboard players set @s fb_x 0

# z
execute as @s run scoreboard players set @s fb_z -100

execute as @s run function fb:check_move