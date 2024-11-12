// Velocidade do dash
dash_speed = 6;

// Tempo entre os dashes (em frames)
dash_interval = 60;
dash_timer = dash_interval;

// Duração do dash (em frames)
dash_duration = 15;
dash_active = false;

// Vida inicial do boss
vida = 100;

// Referência ao alvo inicial do dash (posição fixa do player)
dash_target_x = x;
dash_target_y = y;

cor_original = c_white; // Cor normal do bicho
cor_dano = c_red; // Cor quando atingido
atingido = false; // Flag para saber se foi atingido
