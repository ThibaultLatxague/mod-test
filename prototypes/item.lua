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

data:extend({
    alloy_plate,
    grape
})