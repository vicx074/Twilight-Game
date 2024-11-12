/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Mouse Button Pressed no obj_mage

// Evento Mouse Button Pressed no obj_mage
if (mouse_check_button_pressed(mb_left)) {
    // Cria a bola de magia na posição do jogador
    var magic_ball = instance_create_layer(x, y, "Instances", obj_magic_ball);
	magic_ball.depth = -10;
	
	audio_play_sound(disparo, 0, false)
    
    // Define a direção da bola para onde o mouse está clicando
    magic_ball.direction = point_direction(x, y, mouse_x, mouse_y);
}

