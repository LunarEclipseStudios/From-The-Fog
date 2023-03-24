#placeSign
execute if score true sinisterSignsConfig matches 1 if score lang lurkingLanguageConfig matches 0 if predicate watching:chances/number/50 run function watching:events/sightings/spotted/glass_spotted/english_sign
execute if score true sinisterSignsConfig matches 1 if score lang lurkingLanguageConfig matches 1 if predicate watching:chances/number/50 run function watching:events/sightings/spotted/glass_spotted/swedish_sign

#killEntity
function watching:events/general/kill/kill_spread_entity
