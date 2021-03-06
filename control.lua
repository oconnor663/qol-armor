--control.lua

script.on_event(defines.events.on_player_created, function(e)
  local free_tech = {
    "belt-immunity-equipment",
    "cliff-explosives",
    "exoskeleton-equipment",
    "heavy-armor",
    "modular-armor",
    "night-vision-equipment",
    "power-armor",
    "power-armor-mk2",
    "fusion-reactor-equipment",
    "personal-roboport-equipment",
    "personal-roboport-mk2-equipment",
  }

  for _, name in ipairs(free_tech) do
    game.players[e.player_index].force.technologies[name].researched = true
  end

  game.players[e.player_index].force.technologies["worker-robots-speed-1"].researched = true
  game.players[e.player_index].force.technologies["worker-robots-speed-2"].researched = true
  game.players[e.player_index].force.technologies["worker-robots-speed-3"].researched = true
  game.players[e.player_index].force.technologies["worker-robots-speed-4"].researched = true
  game.players[e.player_index].force.technologies["worker-robots-speed-5"].researched = true
  game.players[e.player_index].force.technologies["worker-robots-speed-6"].level = 15
end)
