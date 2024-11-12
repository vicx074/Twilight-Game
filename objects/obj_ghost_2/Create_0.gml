/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Estado inicial
// Estado inicial
// Defina a quantidade de vida para 10
vida = 10;
hit_timer = 0; // Temporizador para o efeito de piscar vermelho


state = "idle";

// Distância de ativação (em pixels)
activation_distance = 200; // Ajuste conforme necessário

// Velocidade de perseguição
chase_speed = 0.5; // Ajuste conforme necessário

// Variáveis de patrulha
patrol_speed = 0.5; // Velocidade de patrulha
patrol_angle = random(360); // Direção inicial aleatória
patrol_change_time = room_speed * 1; // Mudar direção a cada 2 segundos
patrol_timer = patrol_change_time;

cor_original = c_white; // Cor normal do bicho
cor_dano = c_red; // Cor quando atingido
atingido = false; // Flag para saber se foi atingido
