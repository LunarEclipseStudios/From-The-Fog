# List of variables used:
# "current_page"
# "skin_list"
# "namespace"

# Store the namespace ID that goes along with the page number.
$data modify storage lunareclipse.watching:global_values skin_library.custom_skin.pages.$(current_page).display_name set value "config.setting.herobrine_skin.$(namespace).display_name"

# Add the skins to the page.
$function lunareclipse.watching:config/add_library_option {list: "skin_library", page: $(current_page), option: "herobrine_skin", type: "skin", options: $(skin_list), option_offset: "0"}