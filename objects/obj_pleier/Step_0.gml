//controlando o player e checando suas outras propriedades com o método
controla_player();

//após o jogador tomar dano, ele ficará 60 frames com a alternância entre sua cor padrâo e vermelho
if (alarm[1] > 0) 
{
	var _cor = choose(c_white, c_red);
	image_blend = _cor;
}

#region Debugs

//Ao apertar enter o player deve perder um de vida
if (keyboard_check_pressed(vk_enter)) 
{
	perde_vida();
}

//Se clicar no tab, vai poder aparecer ou desaparecer o debug dos levels dos tiros
if (keyboard_check_released(vk_tab)) { global.debug_level_tiro = !global.debug_level_tiro }


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

//show_debug_message(timer_invencivel)