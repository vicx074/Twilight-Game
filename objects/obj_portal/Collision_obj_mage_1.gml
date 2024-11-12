/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento de Colisão no obj_portal com obj_mage
// Evento de Colisão no obj_portal com obj_mage
if (place_meeting(x, y, obj_mage)) {
    // Armazena o status atual da chave do jogador
    global.has_key_status = obj_mage.has_key;

    // Troca de room - Defina para a sala de destino desejada
    if (room == Tutorial_white_room) {
        room_goto(Tutorial_black_room); // Vai para a sala preta
    } else if (room == Tutorial_black_room) {
        room_goto(Tutorial_white_room); // Volta para a sala branca
    }
}
