if (intensidade_treme > 0.1)
{
	//Valor aleatório entre os valores negativo e positivo da tremedera
	var _x = random_range(-intensidade_treme, intensidade_treme);
	var _y = random_range(-intensidade_treme, intensidade_treme);
	
	//alterando o x da viewport
	view_set_xport(view_current, _x);
	//alterando o y da viewport
	view_set_yport(view_current, _y);
}
else //chegando no 0, o valor da tremedera é zerada e a origem da viewport volta a 0 (original)
{
	intensidade_treme = 0;
	
	view_set_xport(view_current, 0);
	view_set_yport(view_current, 0);
}
/* O motivo da tremedera só começar quando está maior que 0.1, se deve por conta da função "lerp()"
usado logo abaixo, pois como a intensidade da tremedera demora para chegar em 0, a tremedera demora
para acabar se deixássemos em 0 (no primeiro "if") */

//parando a tremedera, com um efeito mais fofo
intensidade_treme = lerp(intensidade_treme, 0, 0.1);