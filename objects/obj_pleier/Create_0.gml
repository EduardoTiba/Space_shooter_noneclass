//variável para ser a velocidade do player
vel = 4;

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

	if (_right) { x += vel }
	if (_left) { x -= vel }
	if (_up) { y -= vel }
	if (_down) { y += vel }
	
}