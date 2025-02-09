-- technology.lua

local alloy_tech = {
    type = "technology",
    name = "alloy-technology",
    icon = "__mod-test__/graphics/icons/alloy-technology.png",
    icon_size = 64, icon_mipmaps = 4,
    -- prerequisites = {"automation"},
    unit = {
        count_formula = "10",
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 2,
    },
    effects = {
        {type = "unlock-recipe", recipe = "alloy-plate"}
    },
}

data:extend({
    alloy_tech
})