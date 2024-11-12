/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Destrói tanto o fantasma quanto a bola de magia
// Destroi o fantasma

// Reduz a vida do fantasma quando ele é atingido
vida -= 1;
hit_timer = 5; // Define o tempo para o efeito de piscar (ajuste conforme necessário)

// Destroi a bola mágica após a colisão (opcional, dependendo da sua lógica de jogo)
instance_destroy(other);

// Verifica se a vida chegou a zero para destruir o fantasma
if (vida <= 0) {
    instance_destroy(); // Destroi o fantasma se a vida acabar
}

// Se o bicho for atingido
atingido = true;
image_blend = cor_dano; // Muda a cor para vermelho
alarm[0] = room_speed * 0.2; // Define o alarme para 0,2 segundos
