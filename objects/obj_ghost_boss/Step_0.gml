// Variáveis de configuração
var attack_types = [obj_attack_fire, obj_attack_water];
var activation_distance = 200; // Distância para o boss começar a atacar
var chase_speed = 0.7; // Velocidade ao perseguir o mage
var patrol_speed = 0.5; // Velocidade quando não está perseguindo

// Temporizador para ataques
if (!variable_global_exists("attack_timer")) {
    global.attack_timer = 0; // Inicializa o temporizador de ataque
}
var attack_interval = room_speed * 2; 

// Verifica se o obj_mage existe antes de atacar
if (instance_exists(obj_mage)) {
    // Calcula a distância até o obj_mage
    var distance_to_mage = point_distance(x, y, obj_mage.x, obj_mage.y);

    // Verifica se o obj_mage colide com o boss
    if (place_meeting(x, y, obj_mage)) {
        room_restart();
    }

    // Condição para ataque
    if (distance_to_mage <= activation_distance) {
        // Verifica se é hora de atacar
        global.attack_timer += 1;

        // Se o temporizador atingir o intervalo, dispara o ataque
        if (global.attack_timer >= attack_interval) {
            // Escolhe um tipo de ataque aleatório
            var attack_index = irandom(array_length(attack_types) - 1);

            // Lógica para cada tipo de ataque
            if (attack_index == 0) { // Ataque de Fogo
                for (var i = 0; i < 8; i++) {
                    var angle = i * 45; // Espaçamento de 45 graus
                    var fire_instance = instance_create_layer(x, y, "Instances", obj_attack_fire);
                    fire_instance.direction = angle;
                    fire_instance.speed = 3; // Ajuste a velocidade conforme necessário
                }
                show_debug_message("Múltiplos projéteis de fogo disparados!");
            } 
            else if (attack_index == 1) { // Ataque de Água
                var water_instance = instance_create_layer(x, y, "Instances", obj_attack_water);
                var angle_to_mage = point_direction(x, y, obj_mage.x, obj_mage.y);
                water_instance.direction = angle_to_mage;
                water_instance.speed = 5; // Ajuste a velocidade conforme necessário
                show_debug_message("Projétil de água disparado na direção do mage!");
			}
           // Reinicia o temporizador para o próximo ataque
            global.attack_timer = 0; // Reinicia o temporizador para o próximo ataque
        }

        // Movimento do boss para perseguir o mage
        var chase_angle = point_direction(x, y, obj_mage.x, obj_mage.y);
        x += lengthdir_x(chase_speed, chase_angle);
        y += lengthdir_y(chase_speed, chase_angle);
    } else {
        // Movimento de patrulha quando o mage está longe
        x += lengthdir_x(patrol_speed, random(360));
        y += lengthdir_y(patrol_speed, random(360));
    }
}

// Destroi projéteis que saem da tela
with (all) {
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        instance_destroy();
    }
}

// Lógica para os projéteis causarem dano ao mage (dentro do evento de colisão de cada projétil)
if (place_meeting(x, y, obj_mage)) {
    room_restart();
    instance_destroy(); // Destroi o projétil após causar dano
}