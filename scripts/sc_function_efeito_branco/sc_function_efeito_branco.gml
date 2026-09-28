function inicia_efeito_branco(){
	//definindo a variável 
	tomei_dano = 0;
}

function timer_efeito_branco(_tempo = 1){
	tomei_dano = _tempo;
	/* Não é "true", pois como o gamemaker considera números positivos como "true"  
	nós usaremos essa variável para ser o timer de piscar branco e para sinalizar
	que levou dano.
	Simplesmente genial */
}

function contador_para_fim_efeito_branco(){
	if (tomei_dano > 0) { tomei_dano-- }
}