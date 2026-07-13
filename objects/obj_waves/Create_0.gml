//não tem mais waves?
sem_waves = false;
//agrupando as sequences das waves em uma array
wave = [sq_wave1, sq_wave1b, sq_wave2];
//em qual dos valores da array de cima está se referindo
indice = 0;
/* inicia em 0 porque começa pela wave1, e ela por sua vez é o 0 dentro da array */


//tempo para surgir a primeira onda
intervalo_inicial = 100;

//tempo para o surgimento das próximas waves, após o primeiro intervalo
intervalo = 400;
/* Cada wave tem exatamente 360 frames, e quando acabar uma wave, terá um tempo de 
60 frames para o jogador respirar até a próxima wave */

alarm[0] = intervalo_inicial;