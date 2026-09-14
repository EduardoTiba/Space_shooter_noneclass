//draw_self();

//me desenhando
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
/* Esse draw sprite rodará a todo momento, por isso que apagamos o draw_self. Mas, vamos alterar as variáveis
"xscale" e "yscale" para somente alterar a escala da sprite e não a colisão */