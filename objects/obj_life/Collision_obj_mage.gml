// Aumenta a vida do obj_mage
with (other) {
    global.vida += 1;

    // Define a cor verde temporariamente e inicia o alarme para voltar à cor normal
    image_blend = c_lime; // Define o jogador para piscar em verde
    alarm[1] = 6; // Define o alarme para 0,1 segundos (aproximadamente 6 steps a 60 FPS)
}

// Destruir o obj_life após a recuperação de vida
instance_destroy();
