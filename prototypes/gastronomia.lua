-- Définition de l'autoplace-control
data:extend({
    {
        type = "autoplace-control",
        name = "gastronomia-ingredient",
        richness = true,
        order = "b-e",
        category = "resource"
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
data:extend({
    {
        type = "resource",
        name = "gastronomia-ingredient",
        icon = "__mod-test__/graphics/icons/gastronomia-ingredient.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        category = "basic-solid",
        order = "a-b-a",
        infinite = false,
        minimum = 200,
        normal = 1000,
        maximum = 3000,
        stage_counts = {1500},
        minable = {
            hardness = 0.9,
            mining_particle = "stone-particle",
            mining_time = 2,
            result = "gastronomia-ingredient"
        },
        autoplace = {
            control = "gastronomia-ingredient",
            sharpness = 1,
            richness_multiplier = 1500,
            richness_base = 500,
            probability_expression = 0.5,
            coverage = 0.02,
            peaks = {
                {
                    noise_layer = "gastronomia-ingredient",
                    noise_octaves_difference = -1.5,
                    noise_persistence = 0.3
                }
            }
        },
        stages = {
            sheet = {
                filename = "__mod-test__/graphics/entity/gastronomia-ingredient/gastronomia-ingredient.png",
                priority = "extra-high",
                size = 64,
                frame_count = 4,
                variation_count = 1
            }
        },
        map_color = { r = 0.8, g = 0.4, b = 0.1 }
    }
})

-- Enregistrement dans les données du mod
data:extend({
    gastronomia_item
})
