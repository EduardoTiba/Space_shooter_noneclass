//Ao colidir com a nave, primeiro a nave toma dano
other.tomando_dano();

//depois a bala do player se destrói
instance_destroy();

//e por fim, cria-se a partícula do tiro
instance_create_layer(x, y, "Explosao", obj_particula_tiro);