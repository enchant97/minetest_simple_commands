minetest.register_chatcommand("day", {
    description = "Set time to day",
    privs = {
        settime = true,
    },
    func = function(name)
        minetest.set_timeofday(0.3)
        return true, "Time set to day"
    end,
})
minetest.register_chatcommand("midday", {
    description = "Set time to midday",
    privs = {
        settime = true,
    },
    func = function(name)
        minetest.set_timeofday(0.5)
        return true, "Time set to midday"
    end,
})
minetest.register_chatcommand("night", {
    description = "Set time to night",
    privs = {
        settime = true,
    },
    func = function(name)
        minetest.set_timeofday(0.9)
        return true, "Time set to night"
    end,
})
minetest.register_chatcommand("midnight", {
    description = "Set time to midnight",
    privs = {
        settime = true,
    },
    func = function(name)
        minetest.set_timeofday(0)
        return true, "Time set to midnight"
    end,
})
