/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Destruir o totem e a bola mágica ao colidir
instance_destroy(); // Destrói o totem (obj_totem1)
with (other) { 
    instance_destroy(); // Destrói a bola mágica (obj_magic_ball)
}

// Verificar se todos os totens foram destruídos
if (!instance_exists(obj_totem1)) {
    // Se não houver mais totens, destrói o obj_stone2
    with (obj_stone2) {
        instance_destroy(); // Destrói a pedra que bloqueia o caminho
    }
}
