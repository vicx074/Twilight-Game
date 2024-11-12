if (is_on_lava) {
    global.vida -= 1; // Tira 1 de vida
    alarm[2] = 60; // Reinicia o alarme para 2 segundos (120 frames)
	atingido = true;
	image_blend = cor_dano; // Muda para a cor de dano temporariamente
	alarm[0] = 6; // Define o alarme para aproximadamente 0,01 segundos (1 step)
}
