function screenshake(intensidade = 0){	
	
	with (obj_screenshake)
	{
		/* Problema: E se quando tiver um momento que o screenshake seja maior, mas estiver acontecendo um screenshake
		menor? */
		if (intensidade > intensidade_treme)
		{
			intensidade_treme = intensidade;
		}
		//Para resolver isso, basta esclarecer que SE o valor de intensidade que está rodando no obj_screenshake for menor que o valor
		//que irá passar para ele, a intensidade deve ser ajustada sempre para o valor maior
	}
}