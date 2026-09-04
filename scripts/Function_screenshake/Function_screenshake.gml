function screenshake(intensidade = 0){	
	
	//checando se a instância do objeto do screenshake existe
	if (instance_exists(obj_screenshake))
	{
		//passando o valor da trememera
		obj_screenshake.intensidade_treme = intensidade;
	}
}