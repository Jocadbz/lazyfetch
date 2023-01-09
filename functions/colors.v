// ansicolors module written by Abidin Durdu (betelgeuse-7) - Literally no license provided
// Copied over here so installing the module won't be necessary
module functions

enum Color {
	reset
	bold
	faint
	italic
	underline
	strikethrough
	black 		
	red			
	green 		
	yellow 		
	blue 		
	magenta 	
	cyan 			
	white 		
	bright_black
	bright_red 		
	bright_green 
	bright_yellow 
	bright_blue 	
	bright_magenta 		
	bright_cyan 	
	bright_white 	
}

const fg_color_codes = {
	"reset": 0, "bold": 1,
	"faint": 2, "italic": 3,
	"underline": 4, "strikethrough": 9,
	"black": 30,"red": 31,
	"green": 32,"yellow": 33,
	"blue": 34, "magenta": 35,
	"cyan": 36, "white": 37,

	"bright_black": 90, "bright_red": 91,
	"bright_green": 92, "bright_yellow": 93,
	"bright_blue": 94, "bright_magenta": 95,
	"bright_cyan": 96, "bright_white": 97
}

fn make_ansi_fg_color_code(color Color) string {
	return "\033[${fg_color_codes[color.str()]}m"
}

// reset coloring
fn reset() string {
	return make_ansi_fg_color_code(Color.reset)
}

pub fn underline(text string) string {
	return make_ansi_fg_color_code(Color.underline) + text + reset()
}
pub fn bold(text string) string {
	return make_ansi_fg_color_code(Color.bold) + text + reset()
}
pub fn faint(text string) string {
	return make_ansi_fg_color_code(Color.faint) + text + reset()
}
pub fn italic(text string) string {
	return make_ansi_fg_color_code(Color.italic) + text + reset()
}
pub fn strikethrough(text string) string {
	return make_ansi_fg_color_code(Color.strikethrough) + text + reset()
}

pub fn fg_black(text string) string {
	return make_ansi_fg_color_code(Color.black) + text + reset()
}
pub fn fg_red(text string) string {
	return make_ansi_fg_color_code(Color.red) + text + reset()
}
pub fn fg_green(text string) string {
	return make_ansi_fg_color_code(Color.green) + text + reset()
}
pub fn fg_yellow(text string) string {
	return make_ansi_fg_color_code(Color.yellow) + text + reset()
}
pub fn fg_blue(text string) string {
	return make_ansi_fg_color_code(Color.blue) + text + reset()
}
pub fn fg_magenta(text string) string {
	return make_ansi_fg_color_code(Color.magenta) + text + reset()
}
pub fn fg_white(text string) string {
	return make_ansi_fg_color_code(Color.white) + text + reset()
}
pub fn fg_bright_black(text string) string {
	return make_ansi_fg_color_code(Color.bright_black) + text + reset()
}
pub fn fg_bright_red(text string) string {
	return make_ansi_fg_color_code(Color.bright_red) + text + reset()
}
pub fn fg_bright_green(text string) string {
	return make_ansi_fg_color_code(Color.bright_green) + text + reset()
}
pub fn fg_bright_yellow(text string) string {
	return make_ansi_fg_color_code(Color.bright_yellow) + text + reset()
}
pub fn fg_bright_blue(text string) string {
	return make_ansi_fg_color_code(Color.bright_blue) + text + reset()
}
pub fn fg_bright_magenta(text string) string {
	return make_ansi_fg_color_code(Color.bright_magenta) + text + reset()
}
pub fn fg_bright_cyan(text string) string {
	return make_ansi_fg_color_code(Color.bright_cyan) + text + reset()
}
pub fn fg_bright_white(text string) string {
	return make_ansi_fg_color_code(Color.bright_white) + text + reset()
}

const bg_color_codes = {
	"reset": 0,
	"black": 40,"red": 41,
	"green": 42,"yellow": 43,
	"blue": 44, "magenta": 45,
	"cyan": 46, "white": 47,

	"bright_black": 100, "bright_red": 101,
	"bright_green": 102, "bright_yellow": 103,
	"bright_blue": 104, "bright_magenta": 105,
	"bright_cyan": 106, "bright_white": 107
}

fn make_ansi_bg_color_code(color Color) string {
	return "\033[${bg_color_codes[color.str()]}m"
}

pub fn bg_black(text string) string {
	return make_ansi_bg_color_code(Color.black) + text + reset()
}
pub fn bg_red(text string) string {
	return make_ansi_bg_color_code(Color.red) + text + reset()
}
pub fn bg_green(text string) string {
	return make_ansi_bg_color_code(Color.green) + text + reset()
}
pub fn bg_yellow(text string) string {
	return make_ansi_bg_color_code(Color.yellow) + text + reset()
}
pub fn bg_blue(text string) string {
	return make_ansi_bg_color_code(Color.blue) + text + reset()
}
pub fn bg_magenta(text string) string {
	return make_ansi_bg_color_code(Color.magenta) + text + reset()
}
pub fn bg_white(text string) string {
	return make_ansi_bg_color_code(Color.white) + text + reset()
}
pub fn bg_bright_black(text string) string {
	return make_ansi_bg_color_code(Color.bright_black) + text + reset()
}
pub fn bg_bright_red(text string) string {
	return make_ansi_bg_color_code(Color.bright_red) + text + reset()
}
pub fn bg_bright_green(text string) string {
	return make_ansi_bg_color_code(Color.bright_green) + text + reset()
}
pub fn bg_bright_yellow(text string) string {
	return make_ansi_bg_color_code(Color.bright_yellow) + text + reset()
}
pub fn bg_bright_blue(text string) string {
	return make_ansi_bg_color_code(Color.bright_blue) + text + reset()
}
pub fn bg_bright_magenta(text string) string {
	return make_ansi_bg_color_code(Color.bright_magenta) + text + reset()
}
pub fn bg_bright_cyan(text string) string {
	return make_ansi_bg_color_code(Color.bright_cyan) + text + reset()
}
pub fn bg_bright_white(text string) string {
	return make_ansi_bg_color_code(Color.bright_white) + text + reset()
}