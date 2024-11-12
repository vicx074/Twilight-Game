/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica se o jogador está perto e possui a chave
if (place_meeting(x, y, obj_mage) && obj_mage.has_key && keyboard_check_pressed(ord("F"))) {
    show_debug_message("Abrindo a porta...");

    // Move o jogador para a frente da porta
    obj_mage.x = x;
    obj_mage.y = y - 32;

    // Ação para abrir a porta
    instance_destroy(); // Destroi a porta para abrir caminho
}
