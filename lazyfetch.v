// Code Written by Jocadbz
// MIT License
// ansicolors module written by Abidin Durdu (betelgeuse-7) - Literally no license provided

module main

import os
import betelgeuse_7.ansicolors as colors

fn main() {
	println(
		colors.bold("${user()}@${os.hostname()}\n") +
		colors.bold("--------------------\n") +
		colors.bold("OS: ${os_parser()}\n") +
		colors.bold("KERNEL: ${kernel()}") +
		colors.bold("SHELL: ${shell()}\n") +
		colors.bold("WM: ${desktop()}\n") +
		colors.bold("UPTIME: ${uptime()}") +
		colors.bold("TERMINAL: ${term()}")
		) 
}

fn user() string {
	user := os.getenv('USERNAME')
	return user
}

fn desktop() string {
	wm := os.getenv("DESKTOP_SESSION")
	return wm
}

fn os_parser() string {
	os_file := os.read_lines("/etc/os-release") or { panic(err) }
	system := os_file[1].replace("PRETTY_NAME=", '')
	return system
}

fn kernel() string {
	kernel := os.execute("uname -r")
	return kernel.output
}

fn shell() string {
	shell := os.getenv("SHELL")
	return shell
}

fn uptime() string {
	uptime := os.execute("uptime -p")
	return uptime.output.replace("up ", '')
}

fn term() string {
	term := os.getenv("TERM")
	return term
}

