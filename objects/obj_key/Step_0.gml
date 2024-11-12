/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica se o jogador está perto da chave e pressiona F
if (place_meeting(x, y, obj_mage) && keyboard_check_pressed(ord("F")) && !is_collected) {
    is_collected = true;
    obj_mage.has_key = true; // Adiciona a chave ao jogador
    instance_destroy(); // Remove a chave da room
}
// Evento Step no obj_key
if (place_meeting(x, y, obj_mage)) {
    show_interact_text = true;

    // Checa se o jogador apertou "F" para pegar a chave
    if (keyboard_check_pressed(ord("F"))) {
        obj_mage.has_key = true; // Jogador pega a chave
        instance_destroy(); // Destrói a chave
    }
} else {
    show_interact_text = false; // Desativa o texto quando o jogador se afasta
}
