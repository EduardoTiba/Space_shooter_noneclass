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