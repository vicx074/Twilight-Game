/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Defina a largura e a altura da visão da câmera

camera_width = 128; // Defina a largura desejada
camera_height = 72; // Defina a altura desejada

// Crie a câmera
camera = camera_create();
// Configure a câmera para seguir o objeto do jogador
camera_set_view_size(camera, camera_width, camera_height);