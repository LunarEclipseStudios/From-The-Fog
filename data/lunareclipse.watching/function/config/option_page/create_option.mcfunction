# List of variables used:
# "id" - The ID of the setting.
# "type" - The type of option being created.
# "page" - The page of the config that this is being run on.

# Create the corresponding option.
$function lunareclipse.watching:config/option_page/type/$(type) with storage lunareclipse.watching:config_options config.settings.option.$(id).$(page)