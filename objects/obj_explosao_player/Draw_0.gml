draw_self();

//efeito visual da explosão
gpu_set_blendmode(bm_add);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.3, image_yscale * 1.3, image_angle, c_red, 0.5);

gpu_set_blendmode(bm_normal);