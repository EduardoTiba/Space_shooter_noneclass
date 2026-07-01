//variável para ser a velocidade do player
vel = 3.5;

//tempo de intervalo dos tiro
intervalo = 10;

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
	
	//variável de movimento vertical
	var _velv = (_down - _up) * vel;
	y += _velv;
	
	//Ao apertar o espaço, será criado um tiro
	if (_atirar)
	{
		if (alarm[0] <= 0)
		{
			//criando o tiro
			var _tiro = instance_create_layer(x, y, "Tiro", obj_tiro);
			//definindo algumas coisas para os tiros:
			//definindo sua velocidade
			_tiro.speed = 10;
			//definindo a velocidade de animação
			_tiro.image_speed = 10;
			//definindo a direção, ou seja, sempre indo para cima
			_tiro.direction = 90;
			
			//Após o tiro, terá um tempo até o próximo tiro
			alarm[0] = intervalo;
		}
	}
	
}

#endregion