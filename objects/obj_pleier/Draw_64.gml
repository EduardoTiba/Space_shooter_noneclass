//exibindo na GUI o level do tiro
if (global.debug_level_tiro == true) { draw_text(20, 20,"Level do tiro: "+ string(level_tiro)) }

//desenhando as vidas do player
//primeiro pegando o valor da altura da CÂMERA, não da viewport
var _altura = camera_get_view_height(view_camera[0]);
//escrevendo as vidas
draw_text(20, _altura, "vida");