//controlando o player com o método
controla_player();

//Fazendo o escudo atualmente usado, seguir o player
if (instance_exists(escudo_atual))
{
	escudo_atual.x = x;
	escudo_atual.y = y;
	
	//deixando o player invencível enquanto está com o escudo
	timer_invencivel = 10;
	/*Poderia colocar qualquer valor, já que estamos dizendo que durante a "existência" do nosso escudo
	o timer estará continuamente sendo ajustado para 10*/
}

//Ao apertar enter o player deve perder um de vida
if (keyboard_check_pressed(vk_enter)) 
{
	perde_vida();
}

if (keyboard_check_pressed(ord("E")))
{
	usa_escudo();
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

show_debug_message(timer_invencivel)