//quantidade de vida desse inimigo
vida = 6;

//variável que controla o estado desse inimigo
estado = "chegando"
/* Inicialmente, o inimigo 3 vai estar "chegando" na tela de partida, depois ele vai parar, 
carregar o tiro e disparar, repete isso 3 vezes e vai embora */

//tempo de carregando o tiro (3 segundos)
tempo_carregando_tiro = game_get_speed(gamespeed_fps) * 3;
//timer inicia em 0
timer_carregando_tiro = 0;

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
				vspeed = 2;
			}
			else
			if (y >= 160) 
			{
				//quando ele chegar na posição correta, ele muda de estado
				estado = "carregando";
			}
		}
		//Se estiver em "chegando", ao ler o código, a checagem deve acabar aqui, sem ler as expressões abaixo
		break
		
		case "carregando":
		{
			//parando de se mover
			vspeed = 0;
			
			//aumentando o valor do timer até chegar no valor do tempo
			timer_carregando_tiro++;
			
			//quando o timer tiver o mesmo valor que o tempo, ele muda de estado
			if (timer_carregando_tiro >= tempo_carregando_tiro)
			{
				//depois do tempo da carregar, o inimigo 3 escolhe um dos dois tipos de tiro
				randomise();
				var _tipo_de_tiro = choose("atirando", "atirando 2");
				
				//após dar o tempo de carga, ele vai para o estado de atirar que foi escolhido
				estado = _tipo_de_tiro;
				
				//depois ele reseta o timer
				timer_carregando_tiro = 0;
			}
		}
		break
		
		case "atirando":
		{
			//só poderá atirar se o jogador não tiver sido destruído, para evitar o erro do pleier morrer e ele continuar procurando o x e y dele pra atirar
			if (instance_exists(obj_pleier))
			{
				//encontrado a direção do player
				var _direction_to_pleier = point_direction(x, y, obj_pleier.x, obj_pleier.y);
				//criando o tiro tipo 1
				var tiro_inimigo3_1 = instance_create_layer(x, y, "Tiro", obj_tiro_inimigo3_tipo1);

				tiro_inimigo3_1.direction = _direction_to_pleier;
				tiro_inimigo3_1.speed = 2;
				tiro_inimigo3_1.image_angle = _direction_to_pleier + 90;
				/* Como a sprite desse tiro ele está virado para baixo, o ângulo normal dele é 270, então temos que somar 90 para
				ficar certinho e bonitinho */
			}
			//após atirar ele volta ao estado de carregar, pra não ficar gerando um monte de tiro
			estado = "carregando";
		}
		break
		
		case "atirando 2":
		{
			//criando o segundo tiro de tiro 
			var tiro_inimigo3_2 = instance_create_layer(x, y, "Tiro", obj_tiro_inimigo3_tipo2);
			tiro_inimigo3_2.vspeed = 2;
		}
		break
	}
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