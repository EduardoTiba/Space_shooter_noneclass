//exibindo na GUI o level do tiro
if (global.debug_level_tiro == true) { draw_text(20, 20,"Level do tiro: "+ string(level_tiro)) }

//desenhando as vidas do player
//primeiro pegando o valor da altura da JANELA, não da viewport
var _alturaGUI = display_get_gui_height();

draw_sprite(spr_icone_player, 0, 20, _alturaGUI - 40);