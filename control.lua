--control.lua

-- script.on_event(defines.events.on_player_changed_position,
--   function(event)
--     local player = game.get_player(event.player_index) -- get the player that moved
--     -- if they're wearing our armor
--     if player.character and player.get_inventory(defines.inventory.character_armor).get_item_count("fire-armor") >= 1 then
--        -- create the fire where they're standing
--        player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"} 
--     end
--   end
-- )

-- script.on_init(function()
--   game.player.force.technologies["worker-robots-speed-1"].researched = true
-- end)

script.on_event(defines.events.on_player_created, function(e)
    game.players[e.player_index].force.technologies["worker-robots-speed-1"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-2"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-3"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-4"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-5"].researched = true
    game.players[e.player_index].force.technologies["worker-robots-speed-6"].level = 10
end)
