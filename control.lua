--control.lua

script.on_event(defines.events.on_player_created, function(e)
    game.players[e.player_index].force.technologies["worker-robots-speed-1"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-2"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-3"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-4"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-5"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-6"].level = 20
end)
