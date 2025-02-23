--[[
	mpv_geometry_freezer.lua
	Sets the geometry property when window size changes,
	avoiding Windows' maximized windows detaching.
	- AMM
]]--
local msg = require 'mp.msg'

local UPDATE_INTERVAL = 0.5
local screen_w, screen_h = mp.get_osd_size()

mp.add_periodic_timer(UPDATE_INTERVAL, function()
	local new_screen_w, new_screen_h = mp.get_osd_size()
	if new_screen_w ~= screen_w or new_screen_h ~= screen_h then
		screen_w = new_screen_w
		screen_h = new_screen_h

		local geom_string = ("%dx%d"):format(screen_w, screen_h)
		msg.debug("OSD resized: " .. geom_string .. ", setting geometry property")
		mp.set_property_native("geometry", geom_string)
	end
end)
