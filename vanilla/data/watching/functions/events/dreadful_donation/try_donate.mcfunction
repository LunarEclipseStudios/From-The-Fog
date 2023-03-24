scoreboard players set true giftDayPassed 1
execute if score lang lurkingLanguageConfig matches 0 if predicate watching:chances/dreadful_donation_chance run loot insert ~ ~ ~ loot watching:events/dreadful_donation/english
execute if score lang lurkingLanguageConfig matches 1 if predicate watching:chances/dreadful_donation_chance run loot insert ~ ~ ~ loot watching:events/dreadful_donation/swedish
