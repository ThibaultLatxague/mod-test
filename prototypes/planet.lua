-- planet.lua

local gastronomia = {
    type = "planet",
    name = "gastronomia",
    localised_name = {"planet-name.gastronomia"},
    localised_description = {"planet-description.gastronomia"},
    icon = "__mod-test__/graphics/icons/gastronomia-icon.png",
    icon_size = 64,
    celestial_position = {x = 150, y = -75},
    map_color = {r = 0.8, g = 0.4, b = 0.1},
    glow_color = {r = 1.0, g = 0.6, b = 0.2},
    radius = 1200,
    starting_resource_amount = 1000000,
    environment_type = "forest",
    terrain_segmentation = 0.75,
    water_level = 0.25,
    distance = 0.7,
    orientation = 0.75,
    resources = {
        {type = "crude-oil", richness = "very-good", size = "medium"},
        {type = "coal", richness = "good", size = "large"},
        {type = "copper-ore", richness = "regular", size = "medium"},
        {type = "iron-ore", richness = "regular", size = "medium"},
        {type = "gastronomia-ingredient", richness = "very-good", size = "large"} -- Ressource personnalisée
    },
    starting_area_size = 3,
    starting_area_resource_amount = 50000,
    has_atmosphere = true,
    atmosphere_color = {r = 0.9, g = 0.5, b = 0.3},
    has_rings = false,
    enemy_evolution_factor = 0.5,
    enemy_expansion_cooldown = 3600,
    enemy_base_density = 0.25
}

data:extend({
    gastronomia
})