-- Définition de l'autoplace-control
data:extend({
    {
        type = "autoplace-control",
        name = "gastronomia-ingredient",
        richness = true,
        order = "b-e"
    }
})

-- Définition de l'item (si ce n'est pas encore défini)
local gastronomia_item = {
    type = "item",
    name = "gastronomia-ingredient",
    icon = "__mod-test__/graphics/icons/gastronomia-ingredient.png",
    icon_size = 64,
    subgroup = "raw-resource",
    order = "a[raw]-z[gastronomia-ingredient]",
    stack_size = 50
}

-- Définition de la ressource
local gastronomia_ingredient = {
    type = "resource",
    name = "gastronomia-ingredient",
    icon = "__mod-test__/graphics/icons/gastronomia-ingredient.png",
    icon_size = 64,
    flags = { "placeable-neutral" },
    category = "basic-solid",
    map_color = { r = 0.9, g = 0.4, b = 0.1 },
    minable = {
        mining_time = 1.5,
        results = {
            {
                type = "item",
                name = "gastronomia-ingredient",
                amount_min = 1,
                amount_max = 3
            }
        }
    },
    resource_patch_search_radius = 100,
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    autoplace = {
        control = "gastronomia-ingredient",
        sharpness = 1.0,
        richness_multiplier = 1500,
        richness_base = 500,
        size_control_multiplier = 0.1,
        probability_expression = 0.5,
        peaks = {
            {
                influence = 0.15,
                starting_area_weight_optimal = 1,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2
            },
            {
                influence = 0.3,
                noise_layer = "gastronomia-ingredient",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.3
            }
        }
    },
    stage_counts = { 10000, 7500, 5000, 2500, 1000, 500, 100, 50 },
    stages = {
        sheet = {
            filename = "__mod-test__/graphics/entity/gastronomia-ingredient/gastronomia-ingredient-ore.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__mod-test__/graphics/entity/gastronomia-ingredient/gastronomia-ingredient-ore.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    },
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 3.6,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,
    map_grid = false
}

-- Enregistrement dans les données du mod
data:extend({
    gastronomia_item,
    gastronomia_ingredient
})
