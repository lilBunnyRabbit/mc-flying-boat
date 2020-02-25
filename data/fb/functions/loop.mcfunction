execute as @a store result score @s fb_r0 run data get entity @s Rotation[0]
execute as @a store result score @s fb_r1 run data get entity @s Rotation[1]

execute as @a[name=LittleBunnyRabb, scores={fb_r0=..0}] run function fb:reverse_rotation

execute as @a[team=fb_pilot, scores={fb_fuel=1..}, nbt={RootVehicle: {Entity: {Tags: ["fb_flyingBoat"]}}}] if data entity @s RootVehicle run function fb:check_zones

function fb:snowball_check

scoreboard players enable @a fb_add_fuel

execute as @a[scores={fb_add_fuel=1..}] run function fb:add_fuel

execute as @a[nbt={Inventory:[{tag:{Tags:["fb_licence"]}}]}] run team join fb_pilot @s
execute as @a[nbt={Inventory:[{tag:{Tags:["fb_licence"]}}]}] run tellraw @s ["",{"text":"Congratulations you just got your ","color":"blue"},{"text":"flying licence","color":"dark_red"},{"text":"!","color":"blue"}]
execute as @a[nbt={Inventory:[{tag:{Tags:["fb_licence"]}}]}] run clear @s minecraft:paper{Tags:["fb_licence"]}