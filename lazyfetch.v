// Code Written by Jocadbz
// MIT License
// ansicolors module written by Abidin Durdu (betelgeuse-7) - Literally no license provided

module main

import functions
import betelgeuse_7.ansicolors as colors

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
	functions.term()
	]
	// End of the array.
	for func in commands {
		println(colors.bold(func))
	}
}

