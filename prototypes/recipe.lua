-- recipe.lua

local alloy_plate = {
    type = "recipe",
    name = "alloy-plate",
    ingredients = {
        {"iron-plate", 1},              -- OU type="item", name="ireon-plate", amount=1
        {"copper-plate", 1}             -- OU type="item", name="copper-plate", amount=1
        -- {"fluid", "water", 100}      -- OU type="fluid", name="water", amount=100
    },
    results = {
        {"alloy-plate", 1}              -- OU type="item", name="alloy-plate", amount=1
    },
    energy_required = 1,         -- Nombre de secondes nécessaires pour fabriquer l'objet
    localised_description = "A plate made of iron and copper",
    -- category = "crafting-with-fluid"                 -- OU "crafting" OU "smelting" OU "advanced-crafting"
    group = "intermediate-products",                    -- OU "logistics" OU "production" OU "intermediate-products" OU "combat" OU "other"
    subgroup = "raw-material"
    -- order = "a[iron-plate]"
}

data:extend({
    alloy_plate
})