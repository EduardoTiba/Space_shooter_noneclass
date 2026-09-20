//Essa função inicia as variáveis necessárias para o efeito
function stretch_squash_variaveis(){
	
	//iniciando as variáveis necessárias para começar o evento
	xscale = 1;
	yscale = 1;

}

//Essa função vai pedir os valores do efeito
function stretch_squash_value(_xscale, _yscale){

	xscale = _xscale;
	yscale = _yscale;
}

function drawing_stretch_squash(){
	
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
	/* Esse draw sprite rodará a todo momento, por isso que apagamos o draw_self. Mas, vamos alterar as variáveis
	"xscale" e "yscale" para somente alterar a escala da sprite e não a colisão */
}