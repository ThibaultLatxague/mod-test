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

local fertilizer = {
    type = "recipe",
    name = "fertilizer",
    ingredients = {
        {type="item", name="wood", amount=2},
        {type="item", name="stone", amount=2},
        {type="item", name="coal", amount=1}
    },
    results = {
        {type="item", name="fertilizer", amount=2}
    },
    energy_required = 1,
    category = "crafting",
    group = "intermediate-products",
    subgroup = "raw-material",
    icon = "__mod-test__/graphics/icons/fertilizer.png",
}

local fertilizer_2 = {
    type = "recipe",
    name = "fertilizer_2",
    ingredients = {
        {type="item", name="wood", amount=5},
        {type="item", name="coal", amount=2},
        {type="item", name="fertilizer", amount=2}
    },
    results = {
        {type="item", name="fertilizer_2", amount=1}
    },
    energy_required = 2,
    category = "crafting",
    group = "intermediate-products",
    subgroup = "raw-material",
    icon = "__mod-test__/graphics/icons/fertilizer_2.png",
}

local wine = {
    name = "wine",
    type = "recipe",
    icon = "__mod-test__/graphics/icons/fluid/wine.png",
    icon_size = 64,
    ingredients = {
        {type="item", name="grape-seed", amount=15},
        {type="fluid", name="water", amount=1000}
    },
    results = {
        {type="fluid", name="wine", amount=750}
    },
    energy_required = 60,
    category = "distilling",
    group = "fluids",
    subgroup = "fluid-recipes"
}

local distillery = {
    name = "distillery",
    type = "recipe",
    icon = "__mod-test__/graphics/icons/distillery.png",
    icon_size = 64,
    ingredients = {
        {type="item", name="alloy-plate", amount=15},
        {type="item", name="pipe", amount=10},
        {type="item", name="stone-brick", amount=10},
        {type="item", name="stone-furnace", amount=1}
    },
    results = {
        {type="item", name="distillery", amount=1}
    },
    energy_required = 60,
    category = "crafting-with-fluid",
    group = "fluids",
    subgroup = "fluid-recipes"
}

local grape_seed_reprocessing = {
    type = "recipe",
    name = "grape-seed-reprocessing",
    ingredients = {
        {type="item", name="grape-seed", amount=1}
    },
    results = {
        {type="item", name="grape-seed", amount=2, probability=0.2},
        {type="item", name="grape-seed", amount=1, probability=0.8}
    },
    energy_required = 2,
    category = "crafting",
    group = "intermediate-products",
    subgroup = "raw-material",
    icon = "__mod-test__/graphics/icons/grape-seed-reprocessing.png",
}

local gastronomia_science_pack = {
    type = "recipe",
    icon = "__mod-test__/graphics/icons/gastronomia-science-pack.png",
    icon_size = 64,
    name = "gastronomia-science-pack",
    ingredients = {
        {type="item", name="grape", amount=1},
        {type="item", name="fertilizer_2", amount=1},
        {type="fluid", name="wine", amount=25}
    },
    results = {
        {type="item", name="gastronomia-science-pack", amount=1}
    },
    energy_required = 1,
    category = "crafting-with-fluid",
    group = "intermediate-products",
    subgroup = "raw-material"
}

data:extend({
    alloy_plate,
    wine,
    fertilizer,
    fertilizer_2,
    grape_seed_reprocessing,
    gastronomia_science_pack,
    distillery
})