// Estado inicial
vida = 50; // Define a quantidade de vida para 50
hit_timer = 0; // Temporizador para o efeito de piscar vermelho
state = "idle"; // Estado inicial

// Distância de ativação (em pixels)
activation_distance = 200; // Ajuste conforme necessário

// Velocidade de perseguição
chase_speed = 0.35; // Ajuste conforme necessário

// Variáveis de patrulha
patrol_speed = 0.15; // Velocidade de patrulha
patrol_angle = random(360); // Direção inicial aleatória
patrol_change_time = room_speed * 1; // Mudar direção a cada 1 segundo
patrol_timer = patrol_change_time; // Timer para patrulha

// Temporizador para ataques
attack_timer = room_speed * 1; // Atacar a cada 1 segundo, ajuste conforme necessário

cor_original = c_white; // Cor normal do bicho
cor_dano = c_red; // Cor quando atingido
atingido = false; // Flag para saber se foi atingido
