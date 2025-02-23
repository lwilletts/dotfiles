--This lua script is written by www.rjno1.com
local opts = require 'mp.options'
--local assdraw = require 'mp.assdraw'
--local msg = require 'mp.msg'
--local utils = require 'mp.utils'

local settings = {
	noplayback = "yes" ,
}

function file_loaded(event)
	local plen = mp.get_property_number("playlist-count", 0)
	if plen >= 2 then
		mp.set_property("resume-playback", "no")
		--mp.command("show-text 1" .. plen)
	else
		--mp.command("show-text 2" .. plen)
	end
end

function resume_playback_change(name, param)
	if param >= 2 then
		mp.set_property("resume-playback", "no")
		--mp.command("show-text 3" .. param)
	else
		--mp.command("show-text 4" .. param)
	end
end

opts.read_options(settings, "playlistnoplayback")

local save_position_on_quit_value = mp.get_property("save-position-on-quit")

if settings.noplayback =="yes" and save_position_on_quit_value == "yes" then

		mp.register_event("file-loaded", file_loaded)
		mp.observe_property( "playlist-count", "number", resume_playback_change)

else

end
