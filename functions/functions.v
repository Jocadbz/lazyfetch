module functions

import os

// Functions should be written here, and be declared on the main file.

pub fn title() string {
	user := os.execute('whoami')
	fuser := user.output.replace('\n', '')
	return "${fuser}@${os.hostname()}\n--------------------"
}

pub fn system() string {
	os_file := os.read_lines("/etc/os-release") or { panic(err) }
	system := os_file[1].replace("PRETTY_NAME=", '')
	return "OS: ${system}"
}

pub fn kernel() string {
	kernel := os.execute("uname -r")
	return "KERNEL: ${kernel.output}".replace("\n", '')
}

pub fn shell() string {
	shell := os.getenv("SHELL").replace("/usr/bin/", '')
	return "SHELL: ${shell}"
}

pub fn desktop() string {
	mut wm := os.getenv("DESKTOP_SESSION")
	if wm == '' {
		return "WM: No wm info provided"
	}
	return "WM: ${wm}"
}

pub fn uptime() string {
	up := os.execute("uptime -p")
	uptime := up.output.replace("up ", '')
	return "UPTIME: ${uptime}".replace('\n', '')
}

pub fn term() string {
	term := os.getenv("TERM")
	return "TERMINAL: ${term}"
}
