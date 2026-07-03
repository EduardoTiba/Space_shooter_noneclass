//exibindo na GUI o level do tiro
if (global.debug_level_tiro == true) { draw_text(20, 20,"Level do tiro: "+ string(level_tiro)) }

#region Ícone das vidas

//desenhando as vidas do player
//primeiro pegando o valor da altura da JANELA, não da viewport
var _alturaGUI = display_get_gui_height();
//valor do primeiro ícone no eixo x
var _XX = 20;
repeat(vida){
	//desenhando a sprite
	draw_sprite(spr_icone_vida, 0, _XX, _alturaGUI - 40);
	//a próxima sprite não estará no mesmo lugar que a antiga
	_XX += 30;
}

#endregion