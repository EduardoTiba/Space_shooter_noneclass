//pegando o valor do meio da tela 
var _y_draw = display_get_gui_height();

//alinhando o texto
draw_set_valign(1);

draw_text(20, _y_draw/2, "jogar");

//resetando os draw set
draw_set_valign(-1);