//controlando o player com o método
controla_player();

//mudando o valor do level do tiro
if (keyboard_check_pressed(vk_up)) 
{
	level_tiro--;
}
if (keyboard_check_pressed(vk_down)) 
{
	level_tiro++;
}






//show_debug_message(level_tiro)