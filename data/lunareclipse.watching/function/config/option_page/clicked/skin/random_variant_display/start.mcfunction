# List of variables used:
# "skin" - The skin being added/removed.

# Randomly select a variant.
$function lunareclipse.utils:random_value_storage/start {target:"lunareclipse.watching:global_values",path:"skin_library.skin.$(skin).variants",command:"lunareclipse.watching:config/option_page/clicked/skin/random_variant_display/display"}