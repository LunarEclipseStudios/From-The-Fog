# List of variables used:
# "page" - The value from the array position we're in.
# "id" - The ID of the setting.

# Reset the page to 1 if there are no others.
$execute unless data storage lunareclipse.watching:config_options {config:{settings:{list:{$(id):{page_list:[$(page)]}}}}} run return run function lunareclipse.watching:config/option_page/create_settings_menu {id:"$(id)",page:1}

# Return to the switch to the next page.
$function lunareclipse.watching:config/option_page/create_settings_menu {id:"$(id)",page:$(page)}