// Evento Key Pressed (Escape)
if (keyboard_check_pressed(vk_escape)) {
    // Alternar pausa
    paused = !paused;

    // Pausar ou retomar o jogo
    if (paused) {
        instance_deactivate_all(true); // Desativa todas as instâncias
    } else {
        instance_activate_all(); // Ativa todas as instâncias
    }
}
