//Ao colidir com a nave, primeiro a nave toma dano
tomando_dano();

//depois a bala do player se destrói
instance_destroy(other);