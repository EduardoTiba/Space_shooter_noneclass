//redefinindo o nome da função
pressionou = keyboard_check_pressed;

menu_options = ["JOGAR", "TUTORIAL", "SAIR"];
actual_option = 0;

//A variável abaixo vai ser a base do valor de uma margem que a opção atual terá
//ou seja, vai mover o texto pro lado
pos_x_quando_selecionado = 0;

#region Métodos do menu

controla_menu = function(){
	//Ao apertar para baixo, desce nas opções do menu
	if (pressionou(vk_down))
	{
		actual_option++;
		sound_effect(sfx_zap, 1, false, 0.7, 1);
		
		//SEMPRE ao mudar de opção, a margem é zerada, senão o efeito não funciona
		pos_x_quando_selecionado = 0;
	}
	
	//Ao apertar para cima, sobe nas opções
	if (pressionou(vk_up))
	{
		actual_option--;
		sound_effect(sfx_zap, 1, false, 0.8, 1);
	
		pos_x_quando_selecionado = 0;
	}
	
	//limitando até onde pode ir nas opções
	actual_option = clamp(actual_option, 0, array_length(menu_options)-1);
	
	//efeito lerp para mover a opção selecionada
	pos_x_quando_selecionado = lerp(pos_x_quando_selecionado, 40, 0.1);
	
	
	//Trocando de sala
	switch(actual_option)
	{
		//opção "jogar"
		case 0:	
		{
			if (pressionou(vk_enter))
			{
				//criando a transição de fade out
				layer_sequence_create("Transicao", 0, 0, sq_transicao_out);	
				
				//definindo que a próxima room será do jogo
				global.destino = rm_partida;
			}
		}
		break;
		
		//opção "tutorial"
		case 1:
		{	
			if (pressionou(vk_enter))
			{
				//fade out
				layer_sequence_create("Transicao", 0, 0, sq_transicao_out);
				
				//indo para a room do tutorial
				global.destino = rm_tutorial;
			}
		}
		break;
		
		//opção "sair"
		case 2: 
		{
			if (pressionou(vk_enter))
			{
				//fechando o jogo
				game_end();
			}
		}
		break;
	}

}

desenha_menu = function(){
	
	//pegando o valor do meio da tela 
	var _y_draw = display_get_gui_height();

	//variável que definirá o espaço entre os textos
	var _espaco_entre_textos = 60;
	
	//alinhando o texto
	draw_set_valign(1);
	//definindo a fonte do texto
	draw_set_font(fnt_menu);
	
	//repetindo a função para desenhar as três strings da array
	for (var i = 0; i < array_length(menu_options); i++)
	{
		//iniciando a variável de cor do texto
		var _cor = c_white;
		//iniciando a variável do valor da margem (veja no create)
		var _margem = 0;
		
		//Se o "i" for igual à opção atual, ele fica vermelho (a opção)
		if (i == actual_option)
		{
			_cor = c_red;	
			
			//A opção atual tem margem
			_margem = pos_x_quando_selecionado
		}
		
		//definindo a cor
		draw_set_color(_cor);
		
		draw_text(20+_margem, _y_draw/2 + i*_espaco_entre_textos, menu_options[i]);
	
		//resetando o draw set
		draw_set_color(-1);
	} 

	//resetando os draw set
	draw_set_valign(-1);
	draw_set_font(-1);
}

#endregion