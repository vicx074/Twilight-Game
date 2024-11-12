// Busca o jogador mais próximo
var obj_jogador = instance_nearest(x, y, obj_mage);

// Verifica se o jogador está perto da carta (por exemplo, a 50 pixels de distância)
if (instance_exists(obj_jogador) && distance_to_object(obj_jogador) < 50) {
    jogador_perto = true;
} else {
    jogador_perto = false;
}

// Se o jogador estiver perto e pressionar "F", alterna o estado da carta
if (jogador_perto && keyboard_check_pressed(ord("F"))) {
    is_open = !is_open;  // Alterna entre aberta e fechada

    // Alterna o sprite da carta com base no estado
    sprite_index = is_open ? spr_carta_aberta : spr_carta;
}
