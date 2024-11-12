/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Colisão com a porta

// Evento de colisão com obj_door_open
if (place_meeting(x, y, obj_door_open)) {
    if (!has_key) { // Se o jogador NÃO tem a chave
        // Cancela a movimentação
        // Aqui não é necessário retornar à posição anterior, apenas impede a passagem
        show_debug_message("Você não pode passar sem a chave!");
    } else {
        // Se o jogador tem a chave, a porta abre
        with (other) { // Aqui usamos 'with' para se referir ao objeto da porta
            instance_destroy(); // Destrói a porta
        }
        show_debug_message("A porta está aberta!"); // Mensagem de confirmação
    }
}


