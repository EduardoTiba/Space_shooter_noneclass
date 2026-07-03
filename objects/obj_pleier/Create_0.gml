//variável para ser a velocidade do player
vel = 3.5;

//vida do player
vida = 3;

//tempo de intervalo dos tiro
intervalo = 10;

//qual tipo de tiro eu estou agora
level_tiro = 1;

#region Método movimentação e de tiro 

//iniciando o sistema de movimentação do jogador:
//Método de controlar o player
controla_player =  function(){
	//pegando os inputs
	var _right, _left, _up, _down, _atirar;
	
	//atribuindo a cada variável uma tecla específica
	_right	= keyboard_check(ord("D")) or keyboard_check(vk_right);
	_left	= keyboard_check(ord("A")) or keyboard_check(vk_left);
	_up		= keyboard_check(ord("W")) or keyboard_check(vk_up);
	_down	= keyboard_check(ord("S")) or keyboard_check(vk_down);
	_atirar = keyboard_check(vk_space) or mouse_check_button(mb_left);

	//variável de movimento horizontal
	var _velh = (_right - _left) * vel;
	x += _velh
	////impedindo que o player saia pela direita
	x = clamp(x, 22, room_width - sprite_width/2);
	
	//if (x <= 20) { x = 20 }
	////impedindo que saia pela esquerda
	//if (x >= room_width - sprite_width/2) { x = room_width - sprite_width/2 }
	////em "sprite_width/2" estamos nos referindo a metade da sprite, assim a metade que ficava para fora, agora fica certo

		
	//variável de movimento vertical
	var _velv = (_down - _up) * vel;
	y += _velv;
	
	//limitando a posição y do player
	y = clamp(y, 19, room_height - 19);
	//o 19 é a metade da altura da sprite
	
	//Ao apertar o espaço, será criado um tiro
	if (_atirar)
	{
		//Mas, só pode atirar se o intervalo entre os tiros já passou
		if (alarm[0] <= 0)
		{			
			//ligando a variável "level_tiro" com os três tipos de tiro
			if (level_tiro == 1)
			{
				tiro1();
			}
			else
			if (level_tiro == 2)
			{
				tiro2();
			}
			else
			if (level_tiro == 3)
			{
				tiro3();
			}
			//Após o tiro, sempre terá um tempo até o próximo tiro
			alarm[0] = intervalo;
		}
	
	}
}



//criando o método do tiro 1
tiro1 = function(){
	//criando o tiro1 
	var _tiro = instance_create_layer(x, y, "Tiro", obj_tiro);
	//definindo algumas coisas para os tiros:
	//definindo sua velocidade
	_tiro.speed = 10;
	//definindo a velocidade de animação
	_tiro.image_speed = 10;
	//definindo a direção, ou seja, sempre indo para cima
	_tiro.direction = 90;
}

//Método dos dois tiros simultâneos
tiro2 = function(){
	//um deles vai ficar mais pra esquerda
	var primeiro_tiro = instance_create_layer(x-10, y,"Tiro", obj_tiro);
	primeiro_tiro.speed = 10;
	primeiro_tiro.direction = 90;
	primeiro_tiro.image_speed = 10;

	//e o outro vai ficar mais pra direita
	var segundo_tiro = instance_create_layer(x+10, y, "tiro", obj_tiro);	
	segundo_tiro.speed = 10;
	segundo_tiro.direction = 90;
	segundo_tiro.image_speed = 10;
}

//Método do tiro tipo 3
tiro3 = function(){
	//aqui vai gerar um tiro no meio
	tiro1();
	//aqui vai criar os tiros dos lados
	tiro2();
}

//Método de ganhar level de tiro ao tocar no power up
ganha_level_tiro = function(){
	//primeiro checa se pode aumentar, em outras palavras, limitando
	//SE for maior ou igual a 3, então se mantém no 3
	level_tiro = clamp(level_tiro, 1, 3);
	/* Ta... A parte de cima não é necessária, mas ta rodando do jeito que eu 
	queria
	*/
	
	//Somente pode aumentar de level, se for menor que o level 3
	if (level_tiro < 3){ level_tiro++ }
}
#endregion