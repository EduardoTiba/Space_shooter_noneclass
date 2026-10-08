//Ao apertar para baixo, desce nas opções do menu
if (keyboard_check_pressed(vk_down))
{
	actual_option++;
}

//Ao apertar para cima, sobe nas opções
if (keyboard_check_pressed(vk_up))
{
	actual_option--;
}

//limitando até onde pode ir nas opções
actual_option = clamp(actual_option, 0, array_length(menu_options)-1);