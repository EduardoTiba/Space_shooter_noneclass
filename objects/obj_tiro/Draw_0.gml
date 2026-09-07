//desenhando o tiro
draw_self();

//alterando a forma como o computador processa as cores
gpu_set_blendmode(bm_add); 
//criando um novo tiro por cima desse, só que um pouco transparente
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.5);

//resetando a forma como o computador processa as cores
gpu_set_blendmode(bm_normal);