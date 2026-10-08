//Ao apertar para baixo, desce nas opções do menu
if (keyboard_check_pressed(vk_down))
{
	actual_option++;
	sound_effect(sfx_zap, 1, false, 0.7, 1);
	
	//SEMPRE ao mudar de opção, a margem é zerada, senão o efeito não funciona
	pos_x_quando_selecionado = 0;
}

//Ao apertar para cima, sobe nas opções
if (keyboard_check_pressed(vk_up))
{
	actual_option--;
	sound_effect(sfx_zap, 1, false, 0.8, 1);

	pos_x_quando_selecionado = 0;
}

//limitando até onde pode ir nas opções
actual_option = clamp(actual_option, 0, array_length(menu_options)-1);

//efeito lerp para mover a opção selecionada
pos_x_quando_selecionado = lerp(pos_x_quando_selecionado, 40, 0.1);