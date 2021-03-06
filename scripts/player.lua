minetest.register_privilege("enhancements", {
    description = "Allow for player enhancements like /exjump",
    give_to_singleplayer = true
})

minetest.register_chatcommand("exjump", {
    description = "Extended jump height",
    params = "<on | off>",
    privs = {
        enhancements = true,
    },
    func = function(name, state)
        local player = minetest.get_player_by_name(name)
        if (state == "on" or state == "")
        then
            player:set_physics_override({jump = EX_JUMP_VAL})
            return true, "Enabled extended jump height"
        else
            player:set_physics_override({jump = 1})
            return true, "Disabled extended jump height"
        end
    end,
})

minetest.register_chatcommand("lowgrav", {
    description = "Low gravity",
    params = "<on | off>",
    privs = {
        enhancements = true,
    },
    func = function(name, state)
        local player = minetest.get_player_by_name(name)
        if (state == "on" or state == "")
        then
            player:set_physics_override({gravity = LOW_GRAV_VAL})
            return true, "Enabled low gravity"
        else
            player:set_physics_override({gravity = 1})
            return true, "Disabled low gravity"
        end
    end,
})

minetest.register_chatcommand("speed", {
    description = "Speed increase",
    params = "<on | off>",
    privs = {
        enhancements = true,
    },
    func = function(name, state)
        local player = minetest.get_player_by_name(name)
        if (state == "on" or state == "")
        then
            player:set_physics_override({speed = SPEED_VAL})
            return true, "Enabled speed"
        else
            player:set_physics_override({speed = 1})
            return true, "Disabled speed"
        end
    end,
})

minetest.register_chatcommand("immortal", {
    description = "Infinite health",
    params = "<on | off>",
    privs = {
        enhancements = true,
    },
    func = function(name, state)
        local player = minetest.get_player_by_name(name)
        if (state == "on" or state == "")
        then
            player:set_armor_groups({immortal = 100})
            return true, "Enabled infinite health"
        else
            player:set_armor_groups({immortal = 0})
            return true, "Disabled infinite health"
        end
    end,
})

minetest.register_chatcommand("air", {
    description = "Give the player air",
    privs = {
        enhancements = true,
    },
    func = function(name)
        local player = minetest.get_player_by_name(name)
        player:set_breath(65535)
        return true, "Refilled air"
    end,
})

minetest.register_chatcommand("hp", {
    description = "Give the player health",
    privs = {
        enhancements = true,
    },
    func = function(name)
        local player = minetest.get_player_by_name(name)
        player:set_hp(65535)
        return true, "Refilled health"
    end,
})

minetest.register_chatcommand("rephand", {
    description = "Repair the item in the players hand",
    privs = {
        enhancements = true,
    },
    func = function(name)
        local player = minetest.get_player_by_name(name)
        local item = player:get_wielded_item()
        if (not item:is_empty())
        then
            item:set_wear(1)
            player:set_wielded_item(item)
            return true, "Repaired item in hand"
        end
        return true, "No item in hand"
    end,
})

minetest.register_chatcommand("pos", {
    description = "Current player posistion",
    func = function(name)
        local player = minetest.get_player_by_name(name)
        local pos = minetest.pos_to_string(player:get_pos(), 0)
        return true, pos
    end,
})

-- Mineclone2 commands

if minetest.get_modpath("mcl_hunger") ~= nil
then
    minetest.register_chatcommand("feed", {
        description = "Fill the players hunger (mineclone2)",
        privs = {
            enhancements = true,
        },
        func = function(name)
            local player = minetest.get_player_by_name(name)
            mcl_hunger.set_hunger(player, 20)
            return true, "Refilled hunger"
        end,
    })

    minetest.register_chatcommand("antidote", {
        description = "Stops player being poisoned (mineclone2)",
        privs = {
            enhancements = true,
        },
        func = function(name)
            local player = minetest.get_player_by_name(name)
            mcl_hunger.stop_poison(player)
            return true, "Administered antidote"
        end,
    })
end
