# Run the joined game message if enabled.
execute if data storage lunareclipse.watching:config_options {options:{eerie_entrance:"true"}} run tellraw @a [{"translate":"eerie_entrance.message.prefix","color":"yellow"},{"text":"Herobrine"},{"translate":"eerie_entrance.message.suffix"}]
# Start the events.
scoreboard players set started_events watching.global_values 1