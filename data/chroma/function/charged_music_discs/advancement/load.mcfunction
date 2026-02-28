advancement revoke @s only chroma:technical/charged_music_discs/load
tag @s add chroma.wants_storm
function chroma:charged_music_discs/check
scoreboard players reset $chroma.storm_requests
scoreboard players reset $chroma.requests_needed