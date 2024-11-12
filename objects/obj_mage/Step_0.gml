/// @description 
// Você pode escrever seu código neste editor

// Defina a posição da câmera para seguir o personagem
var cam_width = 128;  // Largura da câmera
var cam_height = 72; // Altura da câmera

if (global.vida <= 0) {
    // Redefine a posição e a vida do jogador
    x = posicao_inicial_x;
    y = posicao_inicial_y;
    global.vida = 3; // Redefine a vida para o valor inicial
    room_restart();
}



// Ajuste a posição da câmera com base na posição do personagem
camera_set_view_pos(camera, x - cam_width / 2, y - cam_height / 2);

// No Step Event do obj_mage (ou obj_player)

// No Step Event do obj_mage (ou obj_player)
// Definindo a distância de interação
var interaction_distance = 20; // Distância para interação

// Encontrar o objeto cachorro mais próximo
var dog = instance_nearest(x, y, obj_dog);

// Verifica se o cachorro está próximo o suficiente
if (dog != noone && point_distance(x, y, dog.x, dog.y) <= interaction_distance) {
    // Mostrar mensagem na tela (adapte o método de desenho conforme necessário)
    draw_text(x, y - 20, "Pressione F para interagir");

    // Verifica se a tecla F foi pressionada
    if (keyboard_check_pressed(ord("F"))) {
        // Execute a ação de interação
        audio_play_sound(snd_bark, 1, false); // Substitua 'snd_bark' pelo seu som
    }
}

// Limitar o movimento do obj_mage dentro dos limites da room

// Verifica se o obj_mage está ultrapassando o limite esquerdo
if (x < 0) {
    x = 0; // Define a posição x para 0 (limite esquerdo)
}

// Verifica se o obj_mage está ultrapassando o limite direito
if (x > room_width) {
    x = room_width; // Define a posição x para a largura da room
}

// Verifica se o obj_mage está ultrapassando o limite superior
if (y < 0) {
    y = 0; // Define a posição y para 0 (limite superior)
}

// Verifica se o obj_mage está ultrapassando o limite inferior
if (y > room_height) {
    y = room_height; // Define a posição y para a altura da room
}

if (position_meeting(x, y, obj_lava)) {
    if (!is_on_lava) { // Só ativa o alarme se ele não estava no lava
        is_on_lava = true;
		global.vida -= 1; // Dano instantâneo ao entrar
        alarm[2] = 30; // 60 frames para 1 segundo (120 frames para 2 segundos)
		atingido = true;
		image_blend = cor_dano; // Muda para a cor de dano temporariamente
		alarm[0] = 6; // Define o alarme para aproximadamente 0,01 segundos (1 step)
    }
} else {
    is_on_lava = false; // Desativa o dano quando o player sai do lava
    alarm[2] = -1; // Desativa o alarme
}
