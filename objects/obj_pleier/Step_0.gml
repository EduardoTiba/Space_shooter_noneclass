//controlando o player com o método
controla_player();

//Ao apertar enter o player deve perder um de vida
if (keyboard_check_pressed(vk_enter)) 
{
	perde_vida();
}

//Se clicar no tab, vai poder aparecer ou desaparecer o debug dos levels dos tiros
if (keyboard_check_released(vk_tab)) { global.debug_level_tiro = !global.debug_level_tiro }

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

show_debug_message(vida)