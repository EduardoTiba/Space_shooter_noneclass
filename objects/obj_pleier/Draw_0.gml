//draw_self();

if (tomei_dano > 0)
{
	//piscando branco ao tomar dano
	shader_set(sh_white_effect);
	drawing_stretch_squash();
	
	//resetando
	shader_reset();
}
else // caso não esteja tomando dano, ele ainda roda o stretch squash das outras interações
{
	drawing_stretch_squash();	
}