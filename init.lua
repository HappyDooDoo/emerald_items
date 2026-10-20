-- ==========================================
-- EMERALD ITEMS
-- Combined Ores, Tools, Armor, and Shield
-- ==========================================


-- ==========================================
-- EMERALD GEM
-- ==========================================

core.register_craftitem("emerald_items:emerald", {
  description = "Emerald",
  inventory_image = "expanded_ores_emerald.png",
})


-- ==========================================
-- EMERALD BLOCK
-- ==========================================

core.register_node("emerald_items:emerald_block", {
  description = "Emerald Block",

  tiles = {"expanded_ores_emerald_block.png"},

  is_ground_content = false,

  groups = {
    cracky = 1,
    level = 2,
    oddly_breakable_by_hand = 0,
  },

  sounds = default.node_sound_stone_defaults(),
})

core.register_craft({
  output = "emerald_items:emerald_block",
  recipe = {
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
  },
})

core.register_craft({
  output = "emerald_items:emerald 9",
  recipe = {
    {"emerald_items:emerald_block"},
  },
})


-- ==========================================
-- EMERALD ORE
-- ==========================================

core.register_node("emerald_items:stone_with_emerald", {
  description = "Emerald Ore",

  tiles = {"expanded_ores_emerald_ore.png"},

  is_ground_content = true,

  groups = {
    cracky = 3,
    stone = 1,
  },

  drop = "emerald_items:emerald",

  sounds = default.node_sound_stone_defaults(),
})

core.register_ore({
  ore_type = "scatter",
  ore = "emerald_items:stone_with_emerald",
  wherein = "default:stone",

  clust_scarcity = 18 * 18 * 18,
  clust_num_ores = 4,
  clust_size = 3,

  y_min = -31000,
  y_max = -50,

  flags = "absheight",
})


-- ==========================================
-- EMERALD PICKAXE
-- ==========================================

core.register_tool("emerald_items:emerald_pickaxe", {
  description = "Emerald Pickaxe",

  inventory_image = "expanded_tools_tool_emeraldpick.png",

  tool_capabilities = {
    full_punch_interval = 0.8,
    max_drop_level = 3,

    groupcaps = {
      cracky = {
        times = {
          [1] = 2.0,
          [2] = 1.0,
          [3] = 0.5,
        },
        uses = 13,
        maxlevel = 3,
      },
    },

    damage_groups = {fleshy = 4},
  },

  sound = {
    breaks = "default_tool_breaks",
  },
})

core.register_craft({
  output = "emerald_items:emerald_pickaxe",
  recipe = {
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
    {"", "default:stick", ""},
    {"", "default:stick", ""},
  },
})


-- ==========================================
-- EMERALD AXE
-- ==========================================

core.register_tool("emerald_items:emerald_axe", {
  description = "Emerald Axe",

  inventory_image = "expanded_tools_tool_emeraldaxe.png",

  tool_capabilities = {
    full_punch_interval = 0.8,
    max_drop_level = 3,

    groupcaps = {
      choppy = {
        times = {
          [1] = 2.0,
          [2] = 1.0,
          [3] = 0.5,
        },
        uses = 13,
        maxlevel = 3,
      },
    },

    damage_groups = {fleshy = 5},
  },

  sound = {
    breaks = "default_tool_breaks",
  },
})

core.register_craft({
  output = "emerald_items:emerald_axe",
  recipe = {
    {"emerald_items:emerald", "emerald_items:emerald", ""},
    {"emerald_items:emerald", "default:stick", ""},
    {"", "default:stick", ""},
  },
})


-- ==========================================
-- EMERALD SHOVEL
-- ==========================================

core.register_tool("emerald_items:emerald_shovel", {
  description = "Emerald Shovel",

  inventory_image = "expanded_tools_tool_emeraldshovel.png",

  tool_capabilities = {
    full_punch_interval = 0.8,
    max_drop_level = 3,

    groupcaps = {
      crumbly = {
        times = {
          [1] = 2.0,
          [2] = 1.0,
          [3] = 0.5,
        },
        uses = 13,
        maxlevel = 3,
      },
    },

    damage_groups = {fleshy = 4},
  },

  sound = {
    breaks = "default_tool_breaks",
  },
})

core.register_craft({
  output = "emerald_items:emerald_shovel",
  recipe = {
    {"", "emerald_items:emerald", ""},
    {"", "default:stick", ""},
    {"", "default:stick", ""},
  },
})


-- ==========================================
-- EMERALD SWORD
-- ==========================================

core.register_tool("emerald_items:emerald_sword", {
  description = "Emerald Sword",

  inventory_image = "expanded_tools_tool_emeraldsword.png",

  tool_capabilities = {
    full_punch_interval = 0.8,
    max_drop_level = 1,

    groupcaps = {
      snappy = {
        times = {},
        uses = 13,
        maxlevel = 1,
      },
    },

    damage_groups = {fleshy = 8},
  },

  sound = {
    breaks = "default_tool_breaks",
  },
})

core.register_craft({
  output = "emerald_items:emerald_sword",
  recipe = {
    {"", "emerald_items:emerald", ""},
    {"", "emerald_items:emerald", ""},
    {"", "default:stick", ""},
  },
})


-- ==========================================
-- EMERALD HELMET
-- ==========================================

armor:register_armor("emerald_items:helmet_emerald", {
  description = "Emerald Helmet",

  inventory_image = "expanded_armor_helmet_emerald.png",
  texture = "expanded_armor_helmet_emerald_worn.png",
  preview = "expanded_armor_helmet_emerald_preview.png",

  groups = {
    armor_head = 1,
    armor_heal = 12,
    armor_use = 200,
  },

  armor_groups = {
    fleshy = 15,
  },

  damage_groups = {
    cracky = 2,
    snappy = 1,
    choppy = 1,
    level = 3,
  },
})

core.register_craft({
  output = "emerald_items:helmet_emerald",
  recipe = {
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
    {"emerald_items:emerald", "", "emerald_items:emerald"},
    {"", "", ""},
  },
})


-- ==========================================
-- EMERALD CHESTPLATE
-- ==========================================

armor:register_armor("emerald_items:chestplate_emerald", {
  description = "Emerald Chestplate",

  inventory_image = "expanded_armor_chestplate_emerald.png",
  texture = "expanded_armor_chestplate_emerald_worn.png",
  preview = "expanded_armor_chestplate_emerald_preview.png",

  groups = {
    armor_torso = 1,
    armor_heal = 12,
    armor_use = 200,
  },

  armor_groups = {
    fleshy = 20,
  },

  damage_groups = {
    cracky = 2,
    snappy = 1,
    choppy = 1,
    level = 3,
  },
})

core.register_craft({
  output = "emerald_items:chestplate_emerald",
  recipe = {
    {"emerald_items:emerald", "", "emerald_items:emerald"},
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
  },
})


-- ==========================================
-- EMERALD LEGGINGS
-- ==========================================

armor:register_armor("emerald_items:leggings_emerald", {
  description = "Emerald Leggings",

  inventory_image = "expanded_armor_leggings_emerald.png",
  texture = "expanded_armor_leggings_emerald_worn.png",
  preview = "expanded_armor_leggings_emerald_preview.png",

  groups = {
    armor_legs = 1,
    armor_heal = 12,
    armor_use = 200,
  },

  armor_groups = {
    fleshy = 18,
  },

  damage_groups = {
    cracky = 2,
    snappy = 1,
    choppy = 1,
    level = 3,
  },
})

core.register_craft({
  output = "emerald_items:leggings_emerald",
  recipe = {
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
    {"emerald_items:emerald", "", "emerald_items:emerald"},
    {"emerald_items:emerald", "", "emerald_items:emerald"},
  },
})


-- ==========================================
-- EMERALD BOOTS
-- ==========================================

armor:register_armor("emerald_items:boots_emerald", {
  description = "Emerald Boots",

  inventory_image = "expanded_armor_boots_emerald.png",
  texture = "expanded_armor_boots_emerald_worn.png",
  preview = "expanded_armor_boots_emerald_preview.png",

  groups = {
    armor_feet = 1,
    armor_heal = 12,
    armor_use = 200,
  },

  armor_groups = {
    fleshy = 12,
  },

  damage_groups = {
    cracky = 2,
    snappy = 1,
    choppy = 1,
    level = 3,
  },
})

core.register_craft({
  output = "emerald_items:boots_emerald",
  recipe = {
    {"", "", ""},
    {"emerald_items:emerald", "", "emerald_items:emerald"},
    {"emerald_items:emerald", "", "emerald_items:emerald"},
  },
})


-- ==========================================
-- EMERALD SHIELD
-- ==========================================

armor:register_armor("emerald_items:shield_emerald", {
  description = "Emerald Shield",

  inventory_image = "expanded_armor_shield_emerald.png",

  -- Preserve the separate shield appearance fix!
  texture = "expanded_armor_shield_emerald_worn.png",
  preview = "expanded_armor_shield_emerald_preview.png",

  groups = {
    armor_shield = 1,
    armor_heal = 12,
    armor_use = 200,
  },

  armor_groups = {
    fleshy = 15,
  },

  damage_groups = {
    cracky = 2,
    snappy = 1,
    choppy = 1,
    level = 3,
  },

  reciprocate_damage = true,

  on_damage = function(player, index, stack)
    if player then
      core.sound_play("default_dig_glass", {
        pos = player:get_pos(),
        max_hear_distance = 10,
        gain = 1.0,
      })
    end
  end,
})

core.register_craft({
  output = "emerald_items:shield_emerald",
  recipe = {
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
    {"emerald_items:emerald", "emerald_items:emerald", "emerald_items:emerald"},
    {"", "emerald_items:emerald", ""},
  },
})