//controlando o player com o método
controla_player();

#region Sistema da Troca dos levels do tiro

//mudando o valor do level do tiro
if (keyboard_check_pressed(ord("L")))
{
	level_tiro--;
}
if (keyboard_check_pressed(ord("O"))) 
{
	level_tiro++;
}

#endregion

//show_debug_message(level_tiro)