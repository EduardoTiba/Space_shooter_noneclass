//Informando que para voltar à room inicial, é pra apertar "esc"

//definindo a fonte
draw_set_font(fnt_tutorial); 

//definindo a cor do texto
var _cor = make_colour_rgb(90, 70, 160);

//escrevendo no topo da room
draw_text_ext_colour(20, 20, "APERTE 'ESC' PARA VOLTAR", 30, 1000, _cor, _cor, _cor, _cor, 1);

//resetando os draw_set
draw_set_font(-1);