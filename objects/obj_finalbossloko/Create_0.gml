// Evento Create do obj_boss
speed = 0.6; // Define a velocidade de movimento do boss
cor_original = c_white; // Cor normal do bicho
cor_dano = c_red; // Cor quando atingido
atingido = false; // Flag para saber se foi atingido
vida = 150;
// Evento Create do obj_boss

// Define a frequência de ataque (ajuste conforme necessário)
attack_frequency = 30; // O número de steps entre ataques

// Inicia o alarm para o ataque
alarm[1] = attack_frequency;
