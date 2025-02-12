-- assembly machine 

local distiller = {
    type = "assembling-machine",
    name = "distiller",
    icon = "__mod-test__/graphics/icons/distiller.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "distiller"},
    crafting_categories = {"distilling"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01
    },
    energy_usage = "100kW",
    ingredient_count = 2,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "quality"},
    animation = {
        filename = "__mod-test__/graphics/entity/distiller/distiller.png",
        size = 96,
        frame_count = 1,
        line_length = 1,
    },
    drawing_box = {{-1.5, -2.2}, {1.5, 1.5}},
    selection_box = {{-1.5, -2.5}, {1.5, 1.5}},
    collision_box = {{-1.4, -2.4}, {1.4, 1.4}},

    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {1, -2} }},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-1, -2} }},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{ type="output", position = {1, 2} }},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{ type="output", position = {-1, 2} }},
            secondary_draw_orders = { north = -1 }
        },
        fluid_boxes_off_when_no_fluid_recipe = true
    }
}

data:extend({
    distiller
})