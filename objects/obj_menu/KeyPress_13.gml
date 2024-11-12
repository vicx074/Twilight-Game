// Evento: Tecla Enter pressionada
if (keyboard_check_pressed(vk_enter)) {
    if (index == 0) {
        room_goto_next(); // Iniciar o jogo
    } else if (index == 1) {
        room_goto(room_configuracoes); // Ir para a sala de configurações
    } else if (index == 2) {
        game_end(); // Sair do jogo
    }
}
