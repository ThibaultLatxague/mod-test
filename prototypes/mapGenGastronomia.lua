-- File: mapGenGastronomia.lua

local planet_map_gen = require("__space-age__/prototypes/planet/planet-map-gen")

planet_map_gen.gastronomia = function()
    return
    {
        property_expression_names =
        {
            elevation = "gastronomia_elevation",
            temperature = "gastronomia_temperature",
            moisture = "moisture_basic",
            aux = "gastronomia_aux",
            cliffiness = "cliffiness_basic",
            cliff_elevation = "cliff_elevation_from_elevation",
            ["entity:crude-oil:probability"] = "gastronomia_crude_oil_probability",
            ["entity:crude-oil:richness"] = "gastronomia_crude_oil_richness"
        },
        autoplace_controls =
        {
            ["lithium_brine"] = {},
            ["fluorine_vent"] = {},
            ["crude-oil"] = {},
            ["calcite"] = {
                frequency = 7,
                size = 0.5,
                richness = 0.5
            },
            ["gastronomia-ingredient"] = {
                frequency = 0.5,
                size = 0.5,
                richness = 0.5
            }
        },
        autoplace_settings =
        {
            ["tile"] =
            {
                settings =
                {
                    ["snow-flat"] = { frequency = 1, size = 0.5 },
                    ["snow-crests"] = { frequency = 1, size = 0.5 },
                    ["snow-lumpy"] = { frequency = 1, size = 0.5 },
                    ["snow-patchy"] = { frequency = 1, size = 0.5 },
                    ["ice-rough"] = { frequency = 1, size = 0.5 },
                    ["ice-smooth"] = { frequency = 1, size = 0.5 },
                    ["brash-ice"] = { frequency = 1, size = 0.5 },
                    ["ammoniacal-ocean"] = { frequency = 1, size = 0.5 },
                    ["ammoniacal-ocean-2"] = { frequency = 1, size = 0.5 }
                }
            },
            ["decorative"] =
            {
                settings =
                {
                    ["lithium-iceberg-medium"] = { frequency = 0.8, size = 0.3 },
                    ["lithium-iceberg-small"] = { frequency = 1, size = 0.2 },
                    ["lithium-iceberg-tiny"] = { frequency = 1.2, size = 0.1 },
                    ["floating-iceberg-large"] = { frequency = 0.5, size = 0.4 },
                    ["floating-iceberg-small"] = { frequency = 1, size = 0.2 },
                    ["aqulio-ice-decal-blue"] = { frequency = 0.7, size = 0.5 },
                    ["aqulio-snowy-decal"] = { frequency = 0.9, size = 0.5 },
                    ["snow-drift-decal"] = { frequency = 0.6, size = 0.4 }
                }
            },
            ["entity"] =
            {
                settings =
                {
                    ["crude-oil"] = { frequency = 2, size = 1, richness = 1 },
                    ["lithium-brine"] = { frequency = 2, size = 0.8, richness = 0.7 },
                    ["fluorine-vent"] = { frequency = 1.5, size = 0.5, richness = 0.5 },
                    ["lithium-iceberg-huge"] = { frequency = 0.3, size = 0.6 },
                    ["lithium-iceberg-big"] = { frequency = 0.5, size = 0.4 }
                }
            }
        }
    }
end

return planet_map_gen