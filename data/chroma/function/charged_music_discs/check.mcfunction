execute store result score $chroma.storm_requests charged_music_discs.dummy run execute if entity @a[tag=chroma.wants_storm]
execute store result score $chroma.requests_needed charged_music_discs.dummy run execute if entity @a
scoreboard players operation $chroma.requests_needed charged_music_discs.dummy *= $chroma.charged_disc_percentage charged_music_discs.dummy
scoreboard players add $chroma.requests_needed charged_music_discs.dummy 99
scoreboard players operation $chroma.requests_needed charged_music_discs.dummy /= $chroma.const.100 charged_music_discs.dummy
execute if score $chroma.requests_needed charged_music_discs.dummy matches 2.. run title @s actionbar [{score:{name:"$chroma.storm_requests",objective:"charged_music_discs.dummy"}},"/",{score:{name:"$chroma.requests_needed",objective:"charged_music_discs.dummy"}}," players spinning a charged disc"]
execute if score $chroma.storm_requests charged_music_discs.dummy >= $chroma.requests_needed charged_music_discs.dummy run function chroma:charged_music_discs/storm