//ao colidir com o player, ele se destrói
instance_destroy();

//aplicando o método do ganha level de tiro, quando colidir com o player
other.ganha_level_tiro();

//Depois de ser destruída pelo jogador, o power up vai criar uma
//partícula
instance_create_layer(x, y, layer, obj_particula_tiro);