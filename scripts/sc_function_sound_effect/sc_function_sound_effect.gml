function sound_effect(som, prioridade, loop, var_min_pitch, var_max_pitch){
	/* 1- Argumento pede pela asset do som;
	   2- Valor mínimo do pitch;
	   3- Valor máximo do pitch;
	*/ 

	var _pitch = random_range(var_min_pitch, var_max_pitch);
	
	//primeiro, parando o som anterior
	audio_stop_sound(som);
	//tocando o som
	audio_play_sound(som, prioridade, loop, , ,_pitch);
}