// Evento Alarm[0] do obj_finalbossloko

// Verifica se os objetos obj_raio1 e obj_raio2 existem antes de escolher
if (object_exists(obj_raio1) && object_exists(obj_raio2)) {
    // Escolhe aleatoriamente entre obj_raio1 e obj_raio2
    var raio_tipo = choose(obj_raio1, obj_raio2);
    
    // Cria o raio na posição do boss
    var novo_raio = instance_create_layer(x, y, "Instances", raio_tipo);

    // Ajusta a profundidade (depth) do raio
    novo_raio.depth = -10; // Define a profundidade para que o raio seja desenhado acima de outros objetos

    // Se o raio for o obj_raio1 (que persegue o obj_mage)
    if (raio_tipo == obj_raio1) {
        novo_raio.direction = point_direction(x, y, obj_mage.x, obj_mage.y); // Vai em direção ao obj_mage
        novo_raio.speed = 2;  // Ajuste a velocidade do raio
    }

    // Se o raio for o obj_raio2 (que sai aleatoriamente ao redor do boss)
    if (raio_tipo == obj_raio2) {
        // Cria a posição aleatória ao redor do boss
        var angle_offset = random_range(0, 360); // Posição aleatória em torno do boss
        var distance = random_range(40, 80); // Distância aleatória do boss (ajustável)

        novo_raio.x = x + cos(degtorad(angle_offset)) * distance;
        novo_raio.y = y + sin(degtorad(angle_offset)) * distance;

        // Faz o raio se mover em direção ao obj_mage
        novo_raio.direction = point_direction(novo_raio.x, novo_raio.y, obj_mage.x, obj_mage.y);
        novo_raio.speed = 1;  // Ajuste a velocidade do raio (mais lento)

        // Ajusta o tempo de vida do raio para 3 segundos (90 frames)
        novo_raio.alarm[1] = 90;  // 90 frames = 3 segundos
    }

    // Reinicia o alarm para o próximo ataque
    alarm[1] = attack_frequency / 2; // Diminui o intervalo para aumentar a frequência do raio2
}
