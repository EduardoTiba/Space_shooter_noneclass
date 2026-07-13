//criando a sequence
layer_sequence_create("Sq_inimigos_wave", 0, 0, wave[indice]);

//limitando as waves
if (indice < array_length(wave) - 1)
{
	//após criar, o valor da variável "indice" aumenta em 1, pois assim da próxima vez que rodar o alarme
	//a wave será a próxima
	indice++;
	
	//reprogramando o alarme
	alarm[0] = intervalo;
}
/* Há um menos 1 na condição, porque a função "array_length" conta 1, 2, 3 ao invés de 0, 1, 2
que é a forma que a array conta.

Quando o índice chegar em 2, o "array_length(wave)" também irá retornar 2, mas não há nenhum comando
do que fazer quando os dois valores estão iguais, porém o programa não vai reprogramar o alarme novamente
nem aumentar o "indice", ele vai somente criar a wave, já que a função de criar a wave está fora da condição
*/