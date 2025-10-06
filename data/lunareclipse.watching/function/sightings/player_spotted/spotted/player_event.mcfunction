# Give the player the advancement if advancements are enabled.
execute unless entity @s[advancements={from_the_fog:root=true}] run return fail
# First encounter advancement.
advancement grant @s only from_the_fog:haunting/first_encounter
# Check if the dwelling shadow mechanic is on the current sighting and if it is then give the encounter dwelling shadow advancement.
execute if data storage lunareclipse.watching:global_values {sightings:{light_reactant:"true"}} run advancement grant @s only from_the_fog:haunting/encounter_dwelling_shadow
# Grant the From The Pants Advancement.
execute if data storage lunareclipse.watching:config_options {options:{from_the_pants:"true"}} run advancement grant @s only from_the_fog:haunting/encounter_pants