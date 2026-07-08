#region Variáveis

//variável para ser a velocidade do player
vel = 3.5;

//vida do player
vida = 5;

//escudo
escudo = 3;
//A variável abaixo vai guardar o id do escudo criado
escudo_atual = noone;

//tempo de intervalo dos tiro
intervalo = 10;

//tempo de invencibilidade do player, ou seja, o tempo em frames que ficará sem tomar dano
tempo_invencivel = game_get_speed(gamespeed_fps);
//timer de invencibilidade, inicia em 0, pois ao iniciar o jogo, não terá invencibilidade para o jogador
timer_invencivel = 0;

//qual tipo de tiro eu estou agora
level_tiro = 1;

#endregion

#region Método movimentação e de tiro 

//iniciando o sistema de movimentação do jogador:
//Método de controlar o player
controla_player =  function(){
	
	//O timer só diminui seu valor se for maior que 0
	if (timer_invencivel > 0)
	{
		//diminuindo o timer de invencibilidade, pois esse método rodará o tempo todo
		timer_invencivel--;
	}
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
	
	//checagem se há escudo ou não
	usando_escudo();
	
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

#region Métodos

//método de desenhar os ícones da camada GUI
desenha_icone = function(sprite = spr_icone_vida, repeticoes = 1, posicaoY){
	
	//valor do primeiro ícone no eixo x
	var _XX = 20;
	repeat(repeticoes){
	//desenhando a sprite definida dentro de "desenha_icone"
	draw_sprite_ext(sprite, 0, _XX, posicaoY, 1, 1, 0, c_white, 0.4);
	//a próxima sprite não estará no mesmo lugar que a antiga
	_XX += 30;
}

}


//Método para perder vida
perde_vida = function(){
	
	//só toma dano se não estiver invencível
	if (timer_invencivel > 0) { return }
	
		//perda de vida só é possível se for maior que 0
		if (vida > 0)
		{
			vida--; 
			//após isso, o timer em invencibilidade inicia
			timer_invencivel = tempo_invencivel;
		}
		
		//se a vida for menor ou igual a 0, então a nave do player se destrói
		if (vida <= 0) { instance_destroy() }

}


//Método para a perda dos escudos
usa_escudo = function(){
	
	//só pode perder o escudo se ele for maior que 0 e só pode criar o escudo se não tiver um escudo atual
	if (escudo > 0) and (escudo_atual == noone)
	{
		escudo--;
		//criando o escudo na posição do pleier
		escudo_atual = instance_create_layer(x, y, "Escudo", obj_escudo);
	}

}


//Método que armazena a ação do escudo com o pleier
usando_escudo = function(){
	
	//Fazendo o escudo atualmente usado, seguir o player
	if (instance_exists(escudo_atual))
	{
		escudo_atual.x = x;
		escudo_atual.y = y;
		
		//deixando o player invencível enquanto está com o escudo
		timer_invencivel = 10;
		/*Poderia colocar qualquer valor, já que estamos dizendo que durante a "existência" do nosso escudo
		o timer estará continuamente sendo ajustado para 10*/
	}

}
/* Esse método ficará dentro do método "controla_player", pois esse método ta no step, portanto sempre ficará checando se há o escudo ou não.
Lembrando que, provavelmente não tem o problema de não reconhecer o método "usando_escudo" durante a cchecagem, pois o programa vai primeiro
"ler" todos nossos métodos e depois ficar checando no step ;)
*/

#endregion