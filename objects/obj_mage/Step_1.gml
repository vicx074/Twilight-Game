// Evento Step do obj_mage

// Checar se o dash pode ser executado
// Checar se o dash pode ser executado
if (can_dash && keyboard_check_pressed(ord("E"))) {
    // Ativar o dash
    dash_timer = dash_duration;
    can_dash = false;

    // Calcular a direção do dash baseado nas teclas de direção pressionadas
    if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
        dash_direction_x = dash_speed; // Dash para a direita
        dash_direction_y = 0;
    } else if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
        dash_direction_x = -dash_speed; // Dash para a esquerda
        dash_direction_y = 0;
    } else if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
        dash_direction_x = 0;
        dash_direction_y = -dash_speed; // Dash para cima
    } else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
        dash_direction_x = 0;
        dash_direction_y = dash_speed; // Dash para baixo
    } else {
        dash_direction_x = 0;
        dash_direction_y = 0;
    }

    // Adicionar o efeito de desintegração enquanto o dash está sendo realizado
    instance_create_layer(x, y, "Instances", obj_efeito_desintegracao);
}

// Se o dash estiver ativo, aplicar o movimento de dash
if (dash_timer > 0) {
    // Reduz o temporizador do dash
    dash_timer--;

    // Mover o personagem na direção do dash
    if (!place_meeting(x + dash_direction_x, y + dash_direction_y, obj_obstaculo)) {
        x += dash_direction_x;
        y += dash_direction_y;
    }

    // Ao finalizar o dash, iniciar o cooldown
    if (dash_timer == 0) {
        dash_cooldown_timer = dash_cooldown;
    }
} else {
    // Caso o dash tenha terminado, aplicar o cooldown
    if (dash_cooldown_timer > 0) {
        dash_cooldown_timer--;
    } else {
        can_dash = true; // Permitir um novo dash após o cooldown
    }
}



    // Movimentação normal
    if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
        move_direction_x = 1; // Direita
    } else if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
        move_direction_x = -1; // Esquerda
    } else {
        move_direction_x = 0; // Sem movimento horizontal
    }

    if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
        move_direction_y = -1; // Cima
    } else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
        move_direction_y = 1; // Baixo
    } else {
        move_direction_y = 0; // Sem movimento vertical
    }

    // Colisão horizontal
    if (move_direction_x != 0) {
        if (!place_meeting(x + move_direction_x * move_speed, y, obj_obstaculo)) {
            x += move_direction_x * move_speed; // Move o personagem se não houver colisão
        }
    }

    // Colisão vertical
    if (move_direction_y != 0) {
        if (!place_meeting(x, y + move_direction_y * move_speed, obj_obstaculo)) {
            y += move_direction_y * move_speed; // Move o personagem se não houver colisão
        }
    }


// Atualizar a direção da imagem (flip) com base no movimento horizontal
if (move_direction_x != 0) {
    image_xscale = (move_direction_x == 1) ? 1 : -1;
}
