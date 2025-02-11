-- recipe.lua

local alloy_plate = {
    type = "recipe",
    name = "alloy-plate",
    ingredients = {
        {type="item", name="iron-plate", amount=1},
        {type="item", name="copper-plate", amount=1}
        -- {"fluid", "water", 100}      -- OU type="fluid", name="water", amount=100
    },
    results = {
        {type="item", name="alloy-plate", amount=1}
    },
    energy_required = 1,         -- Nombre de secondes nécessaires pour fabriquer l'objet
    -- category = "crafting-with-fluid"                 -- OU "crafting" OU "smelting" OU "advanced-crafting"
    group = "intermediate-products",                    -- OU "logistics" OU "production" OU "intermediate-products" OU "combat" OU "other"
    subgroup = "raw-material"
    -- order = "a[iron-plate]"
}

local wine = {
    name = "wine",
    type = "recipe",
    icon = "__mod-test__/graphics/icons/fluid/wine.png",
    icon_size = 64,
    ingredients = {
        {type="item", name="grape", amount=5},
        {type="fluid", name="water", amount=100}
    },
    results = {
        {type="fluid", name="wine", amount=50}
    },
    energy_required = 10,
    category = "chemistry-or-cryogenics",
    group = "fluids",
    subgroup = "fluid-recipes"
}

data:extend({
    alloy_plate,
    wine
})