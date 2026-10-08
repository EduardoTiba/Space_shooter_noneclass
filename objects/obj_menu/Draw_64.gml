//pegando o valor do meio da tela 
var _y_draw = display_get_gui_height();

//alinhando o texto
draw_set_valign(1);

//repetindo a função para desenhar as três strings da array
for (var i = 0; i < 3; i++)
{
	//iniciando a variável de cor do texto
	var _cor = c_white;
	
	//Se o "i" for igual à opção atual, ele fica vermelho (a opção)
	if (i == actual_option)
	{
		_cor = c_red;	
	}
	
	//definindo a cor
	draw_set_color(_cor);
	
	draw_text(20, _y_draw/2 + i*20, menu_options[i]);

	//resetando o draw set
	draw_set_color(-1);
} 

//resetando os draw set
draw_set_valign(-1);