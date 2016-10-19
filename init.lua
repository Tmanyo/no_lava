minetest.register_on_placenode(function(pos, node, placer)
     if not minetest.check_player_privs(placer, {place_lava=true}) then
          if node.name == "default:lava_source" then
               minetest.swap_node(pos, {name="air"})
          end
     end
end)

minetest.register_privilege("place_lava", {
     description = "Allows a player to place lava source.",
     give_to_singleplayer = false,
})
