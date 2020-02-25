execute as @s run scoreboard players set @s fb_y 0
execute as @s run scoreboard players operation @s fb_y -= @s fb_r1
execute as @s[scores={fb_air=..299, fb_y=..-1}] run scoreboard players set @s fb_y 0

#execute as @s[nbt={SelectedItem:{id:"minecraft:diamond",tag:{display:{Name:'{"text":"Key"}'}}}}] run function fb:moves/move1
#execute as @s[nbt={SelectedItem:{id:"minecraft:gold_ingot",tag:{display:{Name:'{"text":"Key"}'}}}}] run function fb:moves/move2
#execute as @s[nbt={SelectedItem:{id:"minecraft:iron_ingot",tag:{display:{Name:'{"text":"Key"}'}}}}] run function fb:moves/move3


execute as @s[nbt=!{Inventory:[{Slot: -106b, tag:{Tags:["fb_keyStop"]}}]}] if entity @e[type=minecraft:armor_stand,tag=fb_flyingBoat,limit=1,sort=nearest,nbt={NoGravity:1b}] run data merge entity @e[type=minecraft:armor_stand,tag=fb_flyingBoat,limit=1,sort=nearest,nbt={NoGravity:1b}] {NoGravity:0}

execute as @s[nbt={Inventory:[{Slot: -106b, tag:{Tags:["fb_key1"]}}]}] run function fb:moves/move1
execute as @s[nbt={Inventory:[{Slot: -106b, tag:{Tags:["fb_key2"]}}]}] run function fb:moves/move2
execute as @s[nbt={Inventory:[{Slot: -106b, tag:{Tags:["fb_key3"]}}]}] run function fb:moves/move3
execute as @s[nbt={Inventory:[{Slot: -106b, tag:{Tags:["fb_keyStop"]}}]}] run data merge entity @e[type=minecraft:armor_stand,tag=fb_flyingBoat,limit=1,sort=nearest] {NoGravity:1}

#data modify entity @e[tag=fb_flyingBoat_passenger,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]