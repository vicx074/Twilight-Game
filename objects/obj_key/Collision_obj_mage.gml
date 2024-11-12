/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Colisão com o jogador
if (instance_exists(obj_mage)) {
    obj_mage.has_key = true; // Define que o jogador agora possui a chave

    // Você pode optar por destruir a chave após pegar
    instance_destroy(); // Destroi o objeto chave
}
