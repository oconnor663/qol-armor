--data.lua

require("item")

-- Enable destroyed buildings to create ghosts in one of the techs we give for free.
local tech = table.deepcopy(data.raw["technology"]["personal-roboport-mk2-equipment"])
local effects = tech.effects or {}
table.insert(effects, {
  type = "ghost-time-to-live",
  modifier = 60 * 60 * 60 * 24 * 7
})
data:extend { tech }
