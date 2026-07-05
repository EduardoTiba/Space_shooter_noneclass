#region Checando se o escudo já pode ser destruído
//Se a velocidade de animação for negativa e se o frame for menor ou igual a 0.5, então o escudo se destrói
if (image_speed < 0) and (image_index <= 0.5)
{
	instance_destroy();	
	destruido = true;
}
/*
Perceba que devemos colocar a condição de menor ou igual a 0.5, pois assim pode evitar algum bug visual,
é apenas uma hipótese

Então, vendo a aula, o tal "bug visual" seria o escudo voltar para o frame 12
*/

//se o escudo ta destruido, então a variável "escudo_atual" do pleier volta a ser noone
if (destruido == true)
{
	obj_pleier.escudo_atual = noone;
}

#endregion