//Ao colidir com o player, a nave se destrói e cria a partícula, respectivamente
instance_destroy();
instance_create_layer(x, y, "Explosao", obj_explosao_inimigo);

//por fim, o player toma dano
other.perde_vida();