-- MIT License
--
-- Copyright (c) 2016 Florian Zwoch
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

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
	buildcommands "yasm -f win64 %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
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
	buildcommands "yasm -f elf32 %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
	buildoutputs "%{cfg.objdir}/%{file.basename}.o"

filter { "files:**.asm", "system:linux", "architecture:x86_64" }
	buildmessage "%{file.name}"
	buildcommands "yasm -f elf64 %{file.relpath} -o %{cfg.objdir}/%{file.basename}.o"
	buildoutputs "%{cfg.objdir}/%{file.basename}.o"

filter {}
