//exibindo na GUI o level do tiro
if (global.debug_level_tiro == true) { draw_text(20, 20,"Level do tiro: "+ string(level_tiro)) }

#region Desenhando os ícones

//primeiro pegando o valor da altura da JANELA, não da viewport
var _alturaGUI = display_get_gui_height();

//desenhando o ícone das vidas
desenha_icone(spr_icone_vida, vida, _alturaGUI-50);
/*Perceba que o segundo argumento é a variável vida (seu valor é 5), mas dentro do jogo não aparece 6,
pois o programa está multiplicando o valor padrão do segundo argumento, que é 1, pelo valor de vida, assim
fica certinho
*/

desenha_icone(spr_icone_escudo, escudo, _alturaGUI-20);

#endregion