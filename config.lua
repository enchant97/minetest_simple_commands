EX_JUMP_VAL = minetest.settings:get("simple_commands.ex_jump_val")
LOW_GRAV_VAL = minetest.settings:get("simple_commands.low_grav_val")
SPEED_VAL = minetest.settings:get("simple_commands.speed_val")

-- Workaround for bug, where default values return only nil
if not EX_JUMP_VAL then
   EX_JUMP_VAL = 2
end
if not LOW_GRAV_VAL then
   LOW_GRAV_VAL = 0.3
end
if not SPEED_VAL then
   SPEED_VAL = 1.8
end
