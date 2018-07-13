/// @description Insert description here
// You can write your code in this editor
if(!done) {
	switch(spAttr) {
		case "heal":
			show_debug_message(target);
			target.curHealth += 2;
			break;
	}
	done = !done;
}