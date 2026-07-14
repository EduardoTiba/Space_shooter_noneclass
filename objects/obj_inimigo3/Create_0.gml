//quantidade de vida desse inimigo
vida = 6;

//variável que controla o estado desse inimigo
estado = "chegando"
/* Inicialmente, o inimigo 3 vai estar "chegando" na tela de partida, depois ele vai parar, 
carregar o tiro e disparar, repete isso 3 vezes e vai embora */

#region tempo de dispáro dos tiros

//tempo inicial até disparar um tiro
timer_disparo_inicial = game_get_speed(gamespeed_fps) * 2;
//tempo após o primeiro disparo
randomise();
timer_disparo = random_range(1, 2) * game_get_speed(gamespeed_fps);

alarm[0] = timer_disparo_inicial;

#endregion


#region Métodos

//máquina de estados
maquina_de_estados = function(){
	
	switch(estado)
	{
		case "chegando":
		{
			//se a posição y dele for menor que 160, então ele vai indo para baixo
			if (y < 160)
			{
				vspeed = 4;
			}
			else
			if (y >= 160) 
			{
				show_message("Parei");
			}
		}
		
	}
}

//método para a criação do tiro
atirando = function(){
	
	var _tiro_inimigo1 = instance_create_layer(x, y, "Tiro", obj_tiro_inimigo1);
	_tiro_inimigo1.vspeed = 4;
}


//método dos efeitos no inimigo 3 quando ele tomar dano
tomando_dano = function(){
	
	//se o inimigo 3 tem mais que 0 de vida, então ele pode tomar dano
	if (vida > 0)
	{
		//diminuindo a vida
		vida--;
	}		
}

destruido = function(){
	//destruindo o inimigo
	if (vida <= 1)
	{
		instance_destroy();
		//criando a partícula de destruição
		instance_create_layer(x, y, "Explosao", obj_explosao_inimigo);
		
		//chance de spawn de power up é maior
		//Quando a nave inimiga for destruída, tem uma chance de 30% de gerar um power up
		randomise();
		var _chance = random(100);
		if (_chance >= 70) { instance_create_layer(x, y, "Power_ups", obj_power_up) }
	}
	
}

#endregion