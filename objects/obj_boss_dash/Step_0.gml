// Variáveis de configuração
var activation_distance = 200; // Distância para o boss começar a perseguir o mage
var chase_speed = 0.4; // Velocidade ao perseguir o mage
var patrol_speed = 0.5; // Velocidade quando não está perseguindo
var dash_speed = 4; // Velocidade do dash
var dash_duration = room_speed * 0.25; // Duração do dash (0.25 segundos - dash mais curto)
var dash_interval = room_speed * 3; // Intervalo de 3 segundos entre dashes

// Temporizador para dashes
if (!variable_global_exists("dash_timer")) {
    global.dash_timer = dash_interval; // Inicializa o temporizador de dash
}

// Verifica se o obj_mage existe antes de perseguir
if (instance_exists(obj_mage)) {
    // Calcula a distância até o obj_mage
    var distance_to_mage = point_distance(x, y, obj_mage.x, obj_mage.y);

    // Verifica se o obj_mage colide com o boss
    if (place_meeting(x, y, obj_mage)) {
        room_restart();
    }

    // Condição para iniciar perseguição e dash
    if (distance_to_mage <= activation_distance) {
        // Temporizador para dash
        if (global.dash_timer <= 0) {
            // Inicia o dash
            dash_active = true;
            global.dash_timer = dash_interval; // Reinicia o temporizador de dash
            dash_remaining_duration = dash_duration; // Reseta a duração do dash

            // Define a direção para o dash em direção ao player
            dash_target_x = obj_mage.x;
            dash_target_y = obj_mage.y;

            // Cria o rastro no chão durante o dash
            instance_create_layer(x, y, "Instances", obj_boss_trail);
        } else {
            global.dash_timer--; // Decrementa o temporizador de dash
        }

        // Lógica do dash ativo
        if (dash_active) {
            var dash_angle = point_direction(x, y, dash_target_x, dash_target_y);
            x += lengthdir_x(dash_speed, dash_angle);
            y += lengthdir_y(dash_speed, dash_angle);
            dash_remaining_duration--;

            // Cria o rastro no chão durante o dash
            if (dash_remaining_duration > 0) {
                instance_create_layer(x, y, "Instances", obj_boss_trail);
            }

            // Encerra o dash se a duração acabar
            if (dash_remaining_duration <= 0) {
                dash_active = false;
            }
        } else {
            // Movimento do boss para perseguir o mage
            var chase_angle = point_direction(x, y, obj_mage.x, obj_mage.y);
            x += lengthdir_x(chase_speed, chase_angle);
            y += lengthdir_y(chase_speed, chase_angle);
        }
    } else {
        // Movimento de patrulha quando o mage está longe
        x += lengthdir_x(patrol_speed, random(360));
        y += lengthdir_y(patrol_speed, random(360));
    }
}

// Lógica para causar dano ao mage (exemplo dentro do evento de colisão do boss)
if (distance_to_mage <= 16 && dash_active) { 
    global.vida -= 1; // Causa dano ao mage ao colidir durante o dash
    dash_active = false; // Encerra o dash após causar dano
}
