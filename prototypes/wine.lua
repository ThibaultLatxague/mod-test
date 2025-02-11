-- wine.lua

local wine = {
    name = "wine",
    type = "fluid",
    icon = "__mod-test__/graphics/icons/fluid/wine.png",
    icon_size = 64,
    default_temperature = 20,
    base_color = {r=1, g=0, b=1},
    flow_color = {r=2, g=0, b=1}
}

data:extend({
    wine
})