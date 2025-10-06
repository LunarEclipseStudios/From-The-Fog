# List of variables used:
# "id" - The ID of the setting.
# "type" - The type of option being created.
# "page" - The page of the config that this is being run on.
# "offset" - The position left or right of the options on the config.

# Remove 1 from the scoreboard to correct for the looping that is about to happen.
execute if score config_page_assembly watching.global_values matches 1 run scoreboard players remove config_page_assembly watching.global_values 1

# Create the text.
$execute unless data storage lunareclipse.watching:global_values skin_library.custom_skin.pages.$(page) positioned ^1.5 ^ ^ run summon text_display ~ ~ ~ {Tags:["watching.config","watching.settings","watching.text","watching.$(id)"],alignment:"center",line_width:144,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.60f,0f],scale:[0.75f,0.75f,0.75f]},text:{"translate":"config.setting.$(id).$(page).display_name"},background:16711680}
# If the text is going on a skinpack page then use the skin pack's title.
$execute if data storage lunareclipse.watching:global_values skin_library.custom_skin.pages.$(page) positioned ^1.5 ^ ^ run function lunareclipse.watching:config/option_page/type/skin/create_skin_pack_title with storage lunareclipse.watching:global_values skin_library.custom_skin.pages.$(page)

# Manaually insert some data into the forloop.
$data modify storage lunareclipse:utils temp_values.forloop."config.settings.option.$(id).$(page).options".id set value "$(id)"
# Loop through the options.
$execute positioned ~ ~-0.4 ~ positioned ^$(offset) ^ ^ run function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:config_options",path:"config.settings.option.$(id).$(page).options",command:"lunareclipse.watching:config/option_page/type/skin/create_options"}

# Increment for the setting.
scoreboard players add config_page_assembly watching.global_values 1