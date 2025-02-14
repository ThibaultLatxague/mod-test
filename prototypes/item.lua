-- item.lua

local alloy_plate = {
    type = "item",
    name = "alloy-plate",
    icon = "__mod-test__/graphics/icons/alloy-plate.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 100
}

local grape_seed = {
    name = "grape-seed",
    type = "item",
    icon = "__mod-test__/graphics/icons/grape-seed.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "raw-material",
    order = "a[iron-plate]",
}

local grape = {
    name = "grape",
    type = "item",
    icon = "__mod-test__/graphics/icons/grape.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "raw-material",
    order = "a[iron-plate]",
}

local fertilizer = {
    type = "item",
    name = "fertilizer",
    icon = "__mod-test__/graphics/icons/fertilizer.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 100,
    fuel_category = "chemical",
    fuel_value = "1MJ"
}

local fertilizer_2 = {
    type = "item",
    name = "fertilizer_2",
    icon = "__mod-test__/graphics/icons/fertilizer_2.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "a[iron-plate]",
    stack_size = 50,
    fuel_category = "chemical",
    fuel_value = "2MJ"
}

local gastronomia_science_pack = {
    type = "tool",
    name = "gastronomia-science-pack",
    color_hint = { text = "G" },
    subgroup = "science-pack",
    order = "i", -- Ou le pack est placé par rapport aux autres
    icon = "__mod-test__/graphics/icons/gastronomia-science-pack.png",
    icon_size = 64,
    stack_size = 200,
    default_import_location = "gastronomia",
    weight = 1*kg,
    durability = 1,
}

local distillery = {
    name = "distiller",
    type = "item",
    icon = "__mod-test__/graphics/icons/distiller.png",
    icon_size = 64,
    place_result = "distiller",
    stack_size = 20
}

local farm_house = {
    name = "farm-house",
    type = "item",
    icon = "__mod-test__/graphics/icons/farm-house.png",
    icon_size = 64,
    place_result = "farm-house",
    stack_size = 20
}

data:extend({
    alloy_plate,
    grape_seed,
    grape,
    fertilizer,
    fertilizer_2,
    gastronomia_science_pack,
    distillery,
    farm_house
})