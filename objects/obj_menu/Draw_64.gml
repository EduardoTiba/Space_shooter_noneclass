//pegando o valor do meio da tela 
var _y_draw = display_get_gui_height();

//alinhando o texto
draw_set_valign(1);

//repetindo a função para desenhar as três strings da array
for (var i = 0; i < 3; i++)
{
	draw_text(20, _y_draw/2, menu_options[i]);
} 

//resetando os draw set
draw_set_valign(-1);