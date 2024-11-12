// Evento Step de obj_carta

// Verifica a proximidade do jogador (obj_mage)
var obj_jogador = instance_nearest(x, y, obj_mage); // Busca o jogador mais próximo

// Verifica se o jogador está perto da carta
if (instance_exists(obj_jogador) && distance_to_object(obj_jogador) < 50) {
    jogador_perto = true;  // Jogador está perto
} else {
    jogador_perto = false;  // Jogador não está perto
}

// Se o jogador pressionar 'F' e estiver perto, alterna o estado da carta
if (jogador_perto && keyboard_check_pressed(ord("F"))) {
    carta_aberta = !carta_aberta;  // Alterna entre aberta e fechada
}
