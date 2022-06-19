--item.lua

-- data.raw["recipes"]["fusion-reactor-equipment"].ingredients = {}
-- data.raw["recipes"]["fusion-reactor-equipment"].enabled = true
local free_items = {
  "belt-immunity-equipment",
  "construction-robot",
  "exoskeleton-equipment",
  "night-vision-equipment",
  "fusion-reactor-equipment",
  "personal-roboport-mk2-equipment",
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
  data:extend{recipe}
end

local hackArmor = table.deepcopy(data.raw["armor"]["power-armor-mk2"])

hackArmor.name = "hack-armor"
hackArmor.icons = {
  {
    icon = hackArmor.icon,
    tint = {r=0.5,g=0.5,b=1,a=1}
  },
}
hackArmor.equipment_grid = "hack-equipment-grid"
hackArmor.inventory_size_bonus = 50

local hackRecipe = {
  type = "recipe",
  name = "hack-armor",
  enabled = true,
  energy_required = 0.01,
  ingredients = {},
  result = "hack-armor",
  requester_paste_multiplier = 1
}

local hackGrid = {
  type = "equipment-grid",
  name = "hack-equipment-grid",
  width = 16,
  height = 16,
  equipment_categories = {"armor"}
}

data:extend { hackArmor, hackRecipe, hackGrid }
