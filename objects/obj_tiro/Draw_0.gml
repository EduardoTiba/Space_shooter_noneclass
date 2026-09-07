//desenhando o tiro
draw_self();

//alterando a forma como o computador processa as cores
gpu_set_blendmode(bm_add); 

var _cor = choose(c_yellow, c_purple);
//criando um novo tiro por cima desse, só que um pouco transparente
draw_sprite_ext(sprite_index, image_index, x, y-5, image_xscale * 2, image_yscale * 2, image_angle, _cor, 0.6);

//resetando a forma como o computador processa as cores
gpu_set_blendmode(bm_normal);