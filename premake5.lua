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

	project "yasm"
		kind "consoleapp"
		language "c"
		files "main.c"
		files "yasm.asm"
		include "yasm.lua"
