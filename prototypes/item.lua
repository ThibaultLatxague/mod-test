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

data:extend({
    alloy_plate
})