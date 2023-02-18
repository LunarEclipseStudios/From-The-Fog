execute if score number stalkingVanishingDelayConfig matches 0 run function watching:events/general/kill/kill_spread_entity
execute if score number stalkingVanishingDelayConfig matches 1 run schedule function watching:events/general/kill/kill_spread_entity 0.5s
execute if score number stalkingVanishingDelayConfig matches 2 run schedule function watching:events/general/kill/kill_spread_entity 1s
execute if score number stalkingVanishingDelayConfig matches 3 run schedule function watching:events/general/kill/kill_spread_entity 1.5s
execute if score number stalkingVanishingDelayConfig matches 4 run schedule function watching:events/general/kill/kill_spread_entity 2s