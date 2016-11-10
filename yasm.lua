filter { "files:**.asm", "system:windows", "architecture:x86" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f win32 --prefix=_ %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
	buildoutputs "%{cfg.objdir}/%{file.basename}.o"

filter { "files:**.asm", "system:windows", "architecture:x86", "action:vs*" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f win32 %{file.relpath} -o %{cfg.objdir}/%{file.basename}.obj"
	buildoutputs "%{cfg.objdir}/%{file.basename}.obj"

filter { "files:**.asm", "system:windows", "architecture:x86_64" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f win64 --prefix=_ %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
	buildoutputs "%{cfg.objdir}/%{file.basename}.o"

filter { "files:**.asm", "system:windows", "architecture:x86_64", "action:vs*" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f win64 %{file.relpath} -o %{cfg.objdir}/%{file.basename}.obj"
	buildoutputs "%{cfg.objdir}/%{file.basename}.obj"

filter { "files:**.asm", "system:macosx", "architecture:x86" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f macho32 --prefix=_ %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
	buildoutputs "%{cfg.objdir}/%{file.basename}.o"

filter { "files:**.asm", "system:macosx", "architecture:x86_64" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f macho64 --prefix=_ %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
	buildoutputs "%{cfg.objdir}/%{file.basename}.o"

filter { "files:**.asm", "system:linux", "architecture:x86" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f elf32 --prefix=_ %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
	buildoutputs "%{cfg.objdir}/%{file.basename}.o"

filter { "files:**.asm", "system:linux", "architecture:x86_64" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f elf64 --prefix=_ %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
	buildoutputs "%{cfg.objdir}/%{file.basename}.o"

filter {}
