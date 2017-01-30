workspace "yasm"
	configurations "release64"
	configurations "debug64"
	configurations "release32"
	configurations "debug32"

	filter "configurations:debug*"
		symbols "on"

	filter "configurations:release*"
		symbols "off"
		optimize "full"

	filter "configurations:*64"
		architecture "x86_64"

	filter "configurations:*32"
		architecture "x86"

	include "yasm.lua"

	project "yasmapp"
		kind "consoleapp"
		language "c"
		files "main.c"
		files "yasm.asm"

		filter "action:gmake"
			postbuildcommands { "file %{cfg.buildtarget.abspath}" }

	project "yasmshared"
		kind "sharedlib"
		language "c"
		files "yasm.asm"

		filter "action:gmake"
			postbuildcommands { "file %{cfg.buildtarget.abspath}" }

	project "yasmsharedapp"
		kind "consoleapp"
		language "c"
		files "main.c"
		links "yasmshared"

		filter "action:gmake"
			postbuildcommands { "file %{cfg.buildtarget.abspath}" }

	project "yasmstatic"
		kind "staticlib"
		language "c"
		files "yasm.asm"

		filter "action:gmake"
			postbuildcommands { "file %{cfg.buildtarget.abspath}" }

	project "yasmstaticapp"
		kind "consoleapp"
		language "c"
		files "main.c"
		links "yasmstatic"

		filter "action:gmake"
			postbuildcommands { "file %{cfg.buildtarget.abspath}" }
