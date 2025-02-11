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

data:extend({
    alloy_plate,
    grape,
    fertilizer,
    fertilizer_2
})