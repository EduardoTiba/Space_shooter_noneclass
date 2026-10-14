//SEMPRE ao iniciar a room do turorial, cria-se a transição de fade in
layer_sequence_create("Transicao", 0, 0, sq_transicao_in);

//redefinindo o destino como room inicial
global.destino = rm_inicio;