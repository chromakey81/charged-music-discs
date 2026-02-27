tag @s remove chroma.wants_storm
execute store result score $chroma.requests_needed charged_music_discs.dummy run execute if entity @a
title @s actionbar [{score:{name:"$chroma.storm_requests",objective:"charged_music_discs.dummy"}},"/",{score:{name:"$chroma.storm_requests",objective:"charged_music_discs.dummy"}}," players approve"]