/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.vida -= 20;


// Destroi o fantasma
with (other) {
    instance_destroy();
	room_restart();
}


atingido = true;
image_blend = cor_dano; // Muda para a cor de dano temporariamente
alarm[0] = 6; // Define o alarme para aproximadamente 0,01 segundos (1 step)
