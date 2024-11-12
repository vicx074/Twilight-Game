vida -= 1;

// Destroi a bola mágica após a colisão (opcional, dependendo da sua lógica de jogo)
instance_destroy(other);

if (vida <= 0) {
    instance_destroy(); // Destroi o fantasma se a vida acabar
}