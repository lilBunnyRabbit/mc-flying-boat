#execute as @s run scoreboard players operation @s fb_r0 -= @s fb_y

execute as @s run scoreboard players set @s fb_r0_p -90
execute as @s run scoreboard players operation @s fb_r0_p += @s fb_r0

# -x
execute as @s run scoreboard players set @s fb_x -90
execute as @s run scoreboard players operation @s fb_x += @s fb_r0_p

# -z
execute as @s run scoreboard players set @s fb_z 0
execute as @s run scoreboard players operation @s fb_z -= @s fb_r0_p

execute as @s run function fb:check_move