//primeiro, o tiro se destrói
instance_destroy();
//cria a particula de tiro, para dar um efeito de dano 
instance_create_layer(x, y, "Tiro", obj_particula_tiro);

//dando dano no player
other.perde_vida();