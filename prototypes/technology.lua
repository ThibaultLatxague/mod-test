-- technology.lua

local alloy_tech = {
    type = "technology",
    name = "alloy-technology",
    icon = "__mod-test__/graphics/icons/alloy-technology.png",
    icon_size = 64, icon_mipmaps = 4,
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

local gastronomia_discovery = {
    type = "technology",
    name = "planet-discovery-gastronomia",
    icons = util.technology_icon_constant_planet("__mod-test__/graphics/technology/gastronomia.png"),
    icon_size = 256,
    essential = true,
    effects = {
        {
            type = "unlock-space-location",
            space_location = "gastronomia",
            use_icon_overlay_constant = true
        },
        {
            type = "unlock-recipe",
            recipe = "wine"
        }
    },
    prerequisites = {"space-platform-thruster", "electric-energy-accumulators"},
    unit = {
        count = 1000,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 60
    }
}

local grape_seed_reprocessing = {
    type="technology",
    name="grape-reprocessing",
    icon = "__mod-test__/graphics/icons/grape-reprocessing-technology.png",
    icon_size = 64, icon_mipmaps = 4,
    prerequisites = {"planet-discovery-gastronomia"},
    research_trigger = {
        type = "craft-fluid",
        fluid = "wine"
    },
    effects = {
        {type = "unlock-recipe", recipe = "grape-seed-reprocessing"},
        {type = "unlock-recipe", recipe = "fertilizer"},
        {type = "unlock-recipe", recipe = "fertilizer_2"}
    },
}

local gastronomia_science_pack = {
    type = "technology",
    name = "gastronomia-science-pack",
    icon = "__mod-test__/graphics/technology/gastronomia-science-pack.png",
    icon_size = 256,
    icon_size = 256,
    essential = true,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "gastronomia-science-pack",
        },
    },
    prerequisites = {"grape-reprocessing"},
    research_trigger = {
        type = "craft-item",
        item = "cryogenic-plant"
    }
}

data:extend({
    alloy_tech,
    gastronomia_discovery,
    grape_seed_reprocessing,
    gastronomia_science_pack
})