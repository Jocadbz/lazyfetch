// Code Written by Jocadbz
// MIT License

module main

import functions

fn main() {
	// Change this array.
	// Modules are printed in order that you place them.
	commands := [
	functions.title(),
	functions.system(),
	functions.kernel(),
	functions.shell(),
	functions.desktop(),
	functions.uptime(),
	functions.term(),
	]
	// End of the array.
	for func in commands {
		println(functions.bold(func))
	}
}

