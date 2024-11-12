/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Colisão com o jogador
// Colisão com o jogador
// Evento de Colisão no obj_door_open com obj_mage

// Evento de Colisão no obj_door_open com obj_mage

// Evento de Colisão no obj_door_open com obj_mage

// Evento de Colisão no obj_door_open com obj_mage
// Evento de Colisão no obj_door_open com obj_mage

// Evento de Colisão no obj_door_open com obj_mage

if (obj_mage.has_key == true) { 
    // Se o jogador tiver a chave, destrói a porta e redefine a chave
    obj_mage.has_key = false; // Remove a chave do jogador
    instance_destroy(); // Destrói a porta (obj_door_open)
} else {
    // Se o jogador não tiver a chave, empurra-o suavemente para trás
    var push_distance = -2; // Define a distância mínima de empurrão
    with (obj_mage) {
        x += lengthdir_x(push_distance, direction); // Empurra um pouco para trás na direção oposta
        y += lengthdir_y(push_distance, direction); 
        speed = 0; // Garante que o jogador pare ao tocar a porta.
    }
}

