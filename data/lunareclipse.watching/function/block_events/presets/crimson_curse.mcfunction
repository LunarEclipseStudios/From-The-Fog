# Randomly decide between lanterns and torches.
execute store result score crimson_curse_block watching.global_values run random value 0..1

# Execute the command.
execute if score crimson_curse_block watching.global_values matches 0 run function lunareclipse.watching:block_events/events/random/init {option:"crimson_curse", block_tag:"#lunareclipse.watching:torches"}
execute if score crimson_curse_block watching.global_values matches 1 run function lunareclipse.watching:block_events/events/random/init {option:"crimson_curse", block_tag:"minecraft:lantern"}

# Clear the score.
scoreboard players reset crimson_curse_block watching.global_values