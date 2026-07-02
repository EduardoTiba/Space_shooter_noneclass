//controlando o player com o método
controla_player();

#region Sistema da Troca dos levels do tiro

//mudando o valor do level do tiro
if (keyboard_check_pressed(ord("O")))
{
	level_tiro--;
}
if (keyboard_check_pressed(ord("L"))) 
{
	level_tiro++;
}


//se for menor que 1, então vai para 3
if (level_tiro < 1)
{
	level_tiro = 3;
}
//se ultrapassar do 3, então volta ao level 1
if (level_tiro > 3)
{
	level_tiro = 1;
}

#endregion

//show_debug_message(level_tiro)