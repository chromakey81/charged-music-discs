tag @s remove chroma.wants_storm
execute store result score $chroma.requests_needed chroma.dummy run execute if entity @a
title @s actionbar [{score:{name:"$chroma.storm_requests",objective:"chroma.dummy"}},"/",{score:{name:"$chroma.storm_requests",objective:"chroma.dummy"}}," players approve"]