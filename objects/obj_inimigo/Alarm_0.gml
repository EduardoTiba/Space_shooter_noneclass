///@description Atirando
//ao dar o alarme ele criará um tiro
var _tiro_inimigo1 =  instance_create_layer(x, y,"Tiro", obj_tiro_inimigo1);

//definindo que esse tiro vai para baixo
_tiro_inimigo1.vspeed = 2

alarm[0] = game_get_speed(gamespeed_fps) * 2;