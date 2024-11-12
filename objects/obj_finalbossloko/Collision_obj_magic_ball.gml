/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Destrói tanto o fantasma quanto a bola de magia
// Destroi o fantasma

// Reduz a vida do fantasma quando ele é atingido
vida -= 1;
hit_timer = 30; // Define o tempo para o efeito de piscar (ajuste conforme necessário)

// Destroi a bola mágica após a colisão (opcional, dependendo da sua lógica de jogo)
instance_destroy(other);

if (vida <= 0) {
    // Destrói o fantasma se a vida acabar
    instance_destroy(); 
    
    // Destrói o obj_stone_boss, se existir
    if (instance_exists(obj_stone_boss)) {
        with (obj_stone_boss) {
            instance_destroy(); // Destrói a instância do obj_stone_boss
        }
    }
}

// Se o bicho for atingido
atingido = true;
image_blend = cor_dano; // Muda a cor para vermelho
alarm[0] = room_speed * 0.2; // Define o alarme para 0,2 segundos
