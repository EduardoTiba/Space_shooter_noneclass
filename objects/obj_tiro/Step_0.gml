//Ao sair da tela do jogador, o tiro deve ser destruído
if (y <= -32) { instance_destroy() }

//A escala dos tiros vai diminuindo com efeito
image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);

//Velocidade do tiro vai ter o efeito com o lerp
vspeed = lerp(vspeed, -10, 0.1);