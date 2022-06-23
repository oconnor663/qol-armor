--data.lua

-- Make all of these one square on the equipment grid.
local small_equipment = {
  {"belt-immunity-equipment", "belt-immunity-equipment"},
  {"movement-bonus-equipment", "exoskeleton-equipment"},
  {"night-vision-equipment", "night-vision-equipment"},
  {"generator-equipment", "fusion-reactor-equipment"},
  {"roboport-equipment", "personal-roboport-equipment"},
  {"roboport-equipment", "personal-roboport-mk2-equipment"},
}
for _, pair in ipairs(small_equipment) do
  local equipment = table.deepcopy(data.raw[pair[1]][pair[2]])
  equipment.shape.width = 1
  equipment.shape.height = 1
  data:extend { equipment }
end

-- Make all these items free.
local free_items = {
  "belt-immunity-equipment",
  "cliff-explosives",
  "construction-robot",
  "exoskeleton-equipment",
  "fusion-reactor-equipment",
  "light-armor",
  "heavy-armor",
  "modular-armor",
  "night-vision-equipment",
  "personal-roboport-equipment",
  "personal-roboport-mk2-equipment",
  "power-armor",
  "power-armor-mk2",
}
for _, name in ipairs(free_items) do
  local recipe =   {
    type = "recipe",
    name = name,
    enabled = true,
    energy_required = 0.01,
    ingredients = {},
    result = name,
  }
  data:extend { recipe }
end

-- Enable destroyed buildings to create ghosts in one of the starting techs.
local tech = table.deepcopy(data.raw["technology"]["personal-roboport-mk2-equipment"])
local effects = tech.effects or {}
table.insert(effects, {
  type = "ghost-time-to-live",
  modifier = 60 * 60 * 60 * 24 * 7
})
data:extend { tech }
