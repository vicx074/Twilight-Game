// Reduz a vida do boss
vida -= 1;

// Destroi o obj_magic_ball após a colisão
with (other) {
    instance_destroy();
}

// Verifica se a vida do boss chegou a zero
if (vida <= 0) {
    // Destroi o boss
    instance_destroy();
	
}

// Se o bicho for atingido
atingido = true;
image_blend = cor_dano; // Muda a cor para vermelho
alarm[0] = room_speed * 0.2; // Define o alarme para 0,2 segundos

