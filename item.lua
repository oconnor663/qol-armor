--item.lua

-- data.raw["recipes"]["fusion-reactor-equipment"].ingredients = {}
-- data.raw["recipes"]["fusion-reactor-equipment"].enabled = true
local free_items = {
  "battery-equipment",
  "battery-mk2-equipment",
  "belt-immunity-equipment",
  "cliff-explosives",
  "construction-robot",
  "exoskeleton-equipment",
  "night-vision-equipment",
  "fusion-reactor-equipment",
  "personal-roboport-equipment",
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

local qolArmor = table.deepcopy(data.raw["armor"]["power-armor-mk2"])

qolArmor.name = "qol-armor"
qolArmor.icons = {
  {
    icon = qolArmor.icon,
    tint = {r=0.5,g=0.5,b=1,a=1}
  },
}
qolArmor.equipment_grid = "qol-equipment-grid"
qolArmor.inventory_size_bonus = 50

local qolRecipe = {
  type = "recipe",
  name = "qol-armor",
  enabled = true,
  energy_required = 0.01,
  ingredients = {},
  result = "qol-armor",
  requester_paste_multiplier = 1
}

local qolGrid = {
  type = "equipment-grid",
  name = "qol-equipment-grid",
  width = 20,
  height = 16,
  equipment_categories = {"armor"}
}

data:extend { qolArmor, qolRecipe, qolGrid }
