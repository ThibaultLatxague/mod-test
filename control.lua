script.on_event(defines.events.on_player_changed_position,
    function(event)
        local player = game.get_player(event.player_index) -- get le joueur
        if player and player.character then  -- Verifie si le joueur a un personnage (mode spectateur ou map)
            local armor_inventory = player.get_inventory(defines.inventory.character_armor) -- récupération de l'armure
            if armor_inventory and armor_inventory.get_item_count("fire-armor") >= 1 then
                -- créé le feu où le joueur se trouve
                player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"} 
            end
        end
    end
)