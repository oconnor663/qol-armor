--item.lua

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

local recipe = {
  type = "recipe",
  name = "hack-armor",
  enabled = true,
  energy_required = 1,
  ingredients = {},
  result = "hack-armor",
  requester_paste_multiplier = 1
}

local grid = {
  type = "equipment-grid",
  name = "hack-equipment-grid",
  width = 16,
  height = 16,
  equipment_categories = {"armor"}
}

data:extend{hackArmor,recipe,grid}
