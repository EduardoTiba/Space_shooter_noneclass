//Checando se o inimigo tem vida ou não, caso não tenha então ele realiza
//sua ação de destruir
if (vida <= 0)
{
	destruido();
}

//Durante o tempo do alarme 1, ele fica em uma cor diferente
if (alarm[1] > 0) { image_blend = c_yellow }