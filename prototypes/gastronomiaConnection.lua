-- gastronomiaConnection.lua

local nauvis_gastronomia_connection = {
    type = "space-connection",
    name = "nauvis-gastronomia-connection",
    --icon = "__mod-test__/graphics/icons/gastronomia-space-connection.png",
    icon_size = 64, 
    icon_mipmaps = 4,
    order = "a[space-connection]",
    stack_size = 100,

    from = "nauvis",
    to = "gastronomia",
    length = 15000
}

local fulgora_gastronomia_connection = {
    type = "space-connection",
    name = "fulgora-gastronomia-connection",
    --icon = "__mod-test__/graphics/icons/gastronomia-space-connection.png",
    icon_size = 64, 
    icon_mipmaps = 4,
    order = "a[space-connection]",
    stack_size = 100,

    from = "fulgora",
    to = "gastronomia",
    length = 15000
}

data:extend {
    nauvis_gastronomia_connection,
    fulgora_gastronomia_connection
}