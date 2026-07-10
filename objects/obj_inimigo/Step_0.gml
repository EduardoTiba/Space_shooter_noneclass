//Checando se o inimigo tem vida ou não, caso não tenha então ele realiza
//sua ação de destruir
if (vida <= 0)
{
	destruido();
}

//Se o inimigo foi CRIADO em uma sequence e se ele não estiver mais na sequence, então ele se destrói
if (!in_sequence and criado_na_sequence == true) { instance_destroy() }
/* Estamos falando o seguinte: Se a nave não faz parte da sequencia e se ela inicialmente foi criada a partir da tal sequence, então ela se destrói.
Quando a sequence acaba, a variável "in_sequence" do objeto presente nela automaticamente retorna false, mas antes, no create event, nós checamos somente
uma vez se o inimigo é da sequence, assim ela vai com certeza (talvez nem tanto) se destruir
*/

//Durante o tempo do alarme 1, ele fica em uma cor diferente
if (alarm[1] > 0) { image_blend = c_yellow }