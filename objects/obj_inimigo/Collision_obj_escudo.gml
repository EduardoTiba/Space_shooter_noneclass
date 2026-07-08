//Quando a nave colide com o escudo, o player não toma dano, mas a nave inimiga sim

//então... A nave inimiga se destrói
instance_destroy();
//e cria a partícula
instance_create_layer(x, y, "Explosao", obj_explosao_inimigo);