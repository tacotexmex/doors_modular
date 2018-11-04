dofile(minetest.get_modpath("doors_modular").."/functions.lua")

doors_modular:register_door("doors_modular:door_wood", {
	description = "Wooden Door",
	inventory_image = "doors_modular_wood_b.png",
	groups = {snappy=1, choppy=2, oddly_breakable_by_hand=2, flammable=2, door=1},
	tiles = {"doors_modular_wood_b.png"},
})

minetest.register_craft({
	output = "doors_modular:door_wood_1 2",
	recipe = {
		{"group:wood", "group:wood", ""},
		{"group:wood", "group:wood", "group:stick"},
		{"group:wood", "group:wood", ""}
	}
})

doors_modular:register_door("doors_modular:door_wood_window", {
	description = "Wooden Window",
	inventory_image = "doors_modular_wood_a.png",
	groups = {snappy=1, choppy=2, oddly_breakable_by_hand=2, flammable=2, door=1},
	tiles = {"doors_modular_wood_a.png"},
})

minetest.register_craft({
	output = "doors_modular:door_wood_window_1 2",
	recipe = {
		{"group:wood", "group:wood"},
		{"group:stick", "group:stick"},
		{"group:wood", "group:wood"}
	}
})

doors_modular:register_door("doors_modular:door_steel", {
	description = "Steel Door",
	inventory_image = "doors_modular_steel_b.png",
	groups = {snappy=1, cracky=1, door=1},
	tiles = {"doors_modular_steel_b.png"},
	only_placer_can_open = true,
})

minetest.register_craft({
	output = "doors_modular:door_steel",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", ""},
		{"default:steel_ingot", "default:steel_ingot", "group:stick"},
		{"default:steel_ingot", "default:steel_ingot", ""}
	}
})

doors_modular:register_door("doors_modular:steel_bars", {
	description = "Steel Bars",
	inventory_image = "doors_modular_steel_bars.png",
	groups = {snappy=1, cracky=1, door=1},
	tiles = {"doors_modular_steel_bars.png"},
	only_placer_can_open = true,
})

minetest.register_craft({
	output = "doors_modular:door_steel",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot"},
		{"default:stick", "default:stick"},
		{"default:steel_ingot", "default:steel_ingot"}
	}
})
