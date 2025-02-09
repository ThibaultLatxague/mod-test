-- planet.lua

require("__space-age__/prototypes/planet/planet-vulcanus-map-gen")
local planet_map_gen = require("__space-age__/prototypes/planet/planet-map-gen")

local effects = require("__core__.lualib.surface-render-parameter-effects")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
local planet_catalogue_vulcanus = require("__space-age__.prototypes.planet.procession-catalogue-vulcanus")

local gastronomia = {
    type = "planet",
    name = "gastronomia",
    localised_name = { "planet-name.gastronomia" },
    localised_description = { "planet-description.gastronomia" },
    icon = "__mod-test__/graphics/icons/gastronomia-icon.png",
    icon_size = 64,
    celestial_position = { x = 150, y = -75 },
    map_color = { r = 0.8, g = 0.4, b = 0.1 },
    glow_color = { r = 1.0, g = 0.6, b = 0.2 },
    radius = 1200,
    starting_resource_amount = 1000000,
    environment_type = "forest",
    terrain_segmentation = 0.75,
    water_level = 0.25,
    distance = 0.7,
    orientation = 0.75,
    resources = {
        { type = "crude-oil",              richness = "very-good", size = "medium" },
        { type = "coal",                   richness = "good",      size = "large" },
        { type = "copper-ore",             richness = "regular",   size = "medium" },
        { type = "iron-ore",               richness = "regular",   size = "medium" },
        { type = "gastronomia-ingredient", richness = "very-good", size = "large" } -- Ressource personnalisée
    },
    starting_area_size = 3,
    starting_area_resource_amount = 50000,
    has_atmosphere = true,
    atmosphere_color = { r = 0.9, g = 0.5, b = 0.3 },
    has_rings = false,
    enemy_evolution_factor = 0.5,
    enemy_expansion_cooldown = 3600,
    enemy_base_density = 0.25
}

local planetTest = {
    type = "planet",
    name = "gastronomiaTest",
    icon = "__mod-test__/graphics/icons/gastronomia-icon.png",
    starmap_icon = "__space-age__/graphics/icons/starmap-planet-vulcanus.png",
    starmap_icon_size = 512,
    gravity_pull = 10,
    distance = 15,
    orientation = 0.2,
    magnitude = 1.5,
    order = "b[gastronomia]",
    subgroup = "planets",
    map_gen_settings = planet_map_gen.vulcanus(),
    pollutant_type = nil,
    solar_power_in_space = 400,
    platform_procession_set =
    {
        arrival = { "planet-to-platform-b" },
        departure = { "platform-to-planet-a" }
    },
    planet_procession_set =
    {
        arrival = { "platform-to-planet-b" },
        departure = { "planet-to-platform-a" }
    },
    procession_graphic_catalogue = planet_catalogue_vulcanus,
    surface_properties =
    {
        ["day-night-cycle"] = 3 * minute,
        ["magnetic-field"] = 25,
        ["solar-power"] = 150,
        pressure = 4000,
        gravity = 40
    },
    asteroid_spawn_influence = 1,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus, 0.9),
    persistent_ambient_sounds =
    {
        base_ambience = { filename = "__space-age__/sound/wind/base-wind-vulcanus.ogg", volume = 0.8 },
        wind = { filename = "__space-age__/sound/wind/wind-vulcanus.ogg", volume = 0.8 },
        crossfade =
        {
            order = { "wind", "base_ambience" },
            curve_type = "cosine",
            from = { control = 0.35, volume_percentage = 0.0 },
            to = { control = 2, volume_percentage = 100.0 }
        },
        semi_persistent =
        {
            {
                sound = { variations = sound_variations("__space-age__/sound/world/semi-persistent/distant-rumble", 3, 0.5) },
                delay_mean_seconds = 10,
                delay_variance_seconds = 5
            },
            {
                sound = { variations = sound_variations("__space-age__/sound/world/semi-persistent/distant-flames", 5, 0.6) },
                delay_mean_seconds = 15,
                delay_variance_seconds = 7.0
            }
        }
    },
    surface_render_parameters =
    {
        fog = effects.default_fog_effect_properties(),
        -- clouds = effects.default_clouds_effect_properties(),

        -- Should be based on the default day/night times, ie
        -- sun starts to set at 0.25
        -- sun fully set at 0.45
        -- sun starts to rise at 0.55
        -- sun fully risen at 0.75
        day_night_cycle_color_lookup =
        {
            { 0.0,  "__space-age__/graphics/lut/vulcanus-1-day.png" },
            { 0.20, "__space-age__/graphics/lut/vulcanus-1-day.png" },
            { 0.45, "__space-age__/graphics/lut/vulcanus-2-night.png" },
            { 0.55, "__space-age__/graphics/lut/vulcanus-2-night.png" },
            { 0.80, "__space-age__/graphics/lut/vulcanus-1-day.png" },
        },

        terrain_tint_effect =
        {
            noise_texture =
            {
                filename = "__space-age__/graphics/terrain/vulcanus/tint-noise.png",
                size = 4096
            },

            offset = { 0.2, 0, 0.4, 0.8 },
            intensity = { 0.5, 0.2, 0.3, 1.0 },
            scale_u = { 3, 1, 1, 1 },
            scale_v = { 1, 1, 1, 1 },

            global_intensity = 0.3,
            global_scale = 0.1,
            zoom_factor = 3,
            zoom_intensity = 0.6
        }
    }
}

data:extend({
    gastronomia,
    planetTest
})
