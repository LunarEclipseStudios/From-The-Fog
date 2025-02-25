#placeSign
execute if block ~ ~ ~ #watching:air_blocks if score sinisterSignsConfig ftf.configOptions matches 1 if score lurkingLanguageConfig ftf.configOptions matches 0 if predicate watching:chances/number/50 run function watching:events/sightings/spotted/glass_spotted/english_sign
execute if block ~ ~ ~ #watching:air_blocks if score sinisterSignsConfig ftf.configOptions matches 1 if score lurkingLanguageConfig ftf.configOptions matches 1 if predicate watching:chances/number/50 run function watching:events/sightings/spotted/glass_spotted/swedish_sign

#killEntity
function watching:events/general/kill/kill_spread_entity
