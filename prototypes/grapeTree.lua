local grape_tree = {
    type = "tree",
    name = "grape-tree",
    icon = "__mod-test__/graphics/icons/grape-tree.png",
    flags = tree_flags,
    pictures = {
        filename = "__base__/graphics/entity/tree/dead-tree-desert/dead-tree-desert-00.png",
        width = 398,
        height = 250,
        shift = util.by_pixel(66.5, -32),
        scale = 0.5
    },
    {
        filename = "__base__/graphics/entity/tree/dead-tree-desert/dead-tree-desert-01.png",
        width = 399,
        height = 249,
        shift = util.by_pixel(64.25, -36.75),
        scale = 0.5
    },
    minable =
    {
        mining_particle = "wooden-particle",
        mining_time = 0.55,
        result = "grape",
        count = 4,
        mining_trigger =
        {
            {
            type = "direct",
            action_delivery =
            {
                {
                type = "instant",
                target_effects = leaf_sound_trigger
                }
            }
            }
        }
    },
    -- corpse = "grape-stump",
    -- remains_when_mined = "grape-stump",
    max_health = 50,
    map_generator_bounding_box = {{-0.8, -0.8}, {0.8, 0.8}},
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.9, -2.2}, {0.9, 0.6}},
    subgroup = "trees",
    order = "a[tree]-a[nauvis]-a[regular]",
    impact_category = "tree",
    -- autoplace = tree_data.autoplace,
    -- variations = tree_variations,
    -- variation_weights = tree_data.variation_weights,
    -- colors = tree_data.colors,
    darkness_of_burnt_tree = 0.5,
    -- water_reflection = tree_data.water_reflection
    ambient_sounds_group = ambient_sounds_group,
    ambient_sounds = ambient_sounds
}

data:extend({
    grape_tree
})