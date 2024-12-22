var up = keyboard_check_pressed(vk_up);
var down = keyboard_check_pressed(vk_down);
var space = keyboard_check_pressed(vk_space);

// Change Selection
if (up) {
	current_selection++;	
}
if (down) {
	current_selection--;
}


if (current_selection >= array_length(buttons)) {
	current_selection = 0;	
}
if (current_selection < 0) {
	current_selection = array_length(buttons) - 1;
}

for (var i = 0; i < array_length(buttons); i++) {
	if (i == current_selection) { buttons[i].selected = true; } else { buttons[i].selected = false; }	
}

// Confirm selection
if (space) {
	buttons[current_selection].alarm[0] = 1;
}