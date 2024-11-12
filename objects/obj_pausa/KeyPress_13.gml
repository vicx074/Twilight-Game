// Evento Key Pressed (Enter)
if (paused) {
    // Selecionar opção
    if (selected_option == 0) {
        paused = false; // Continuar o jogo
        instance_activate_all(); // Ativar todas as instâncias
    } else if (selected_option == 1) {
        room_goto(Tiros_Totem); 
		global.vida = 3
    }
}