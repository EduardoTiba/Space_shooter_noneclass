//tempo inicial até disparar um tiro
timer_disparo_inicial = game_get_speed(gamespeed_fps) * 2;
//tempo após o primeiro disparo
timer_disparo = game_get_speed(gamespeed_fps);

alarm[0] = timer_disparo_inicial;

//método para a criação do tiro
atirando = function(){
	
	var _tiro_inimigo1 = instance_create_layer(x, y, "Tiro", obj_tiro_inimigo1);
	_tiro_inimigo1.vspeed = 4;
}