//aumentando a escala do escudo para a sprite da nave ficar coberta pelo escudo
image_xscale = 1.2;
image_yscale = 1.2;

//o escudo começa sem estar destruído
destruido = false;

//Alarme do tempo até o escudo começar a se desfazer
alarm[0] = game_get_speed(gamespeed_fps) * 2;