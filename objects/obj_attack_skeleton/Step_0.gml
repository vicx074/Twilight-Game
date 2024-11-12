/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Step do obj_attack_skeleton
// Mover o projétil na direção que foi definida
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Opcional: Destruir o projétil se sair da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
// Evento Step do obj_attack_skeleton
// Mover o projétil na direção que foi definida
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Verificar colisão com obj_old_tree
if (place_meeting(x, y, obj_old_three)) {
    // Destruir o projétil ao colidir com a árvore
    instance_destroy();
}
if (place_meeting(x, y, obj_block1)) {
    // Destruir o projétil ao colidir com a árvore
    instance_destroy();
}

// Opcional: Destruir o projétil se sair da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
