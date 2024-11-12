/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (instance_exists(obj_obstaculo)) {
    if (place_meeting(x, y, obj_obstaculo)) {
        instance_destroy(); // Destroi a bola ao colidir com um obstáculo
    }
}

// Destroi a bola se sair da tela (opcional)
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
