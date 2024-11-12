// Verifica se obj_mage existe no jogo antes de persegui-lo

// Verifique se o obj_mage existe
if (instance_exists(obj_mage)) {
    // Calcule a distância até o obj_mage
    var distance_to_mage = point_distance(x, y, obj_mage.x, obj_mage.y);
    
    // Depuração: Mostrar a distância no console
    // show_debug_message("Distância do fantasma ao mage: " + string(distance_to_mage));
    
    // Determine o estado com base na distância
    if (distance_to_mage <= activation_distance) {
        state = "chasing";
        show_debug_message("Fantasmas estão perseguindo o mage.");
    } else {
        state = "idle";
    }
    
    // Comportamento baseado no estado
    if (state == "chasing") {
        // Calcular a direção para o obj_mage
        var angle = point_direction(x, y, obj_mage.x, obj_mage.y);
        
        // Mover o fantasma na direção do obj_mage
        x += lengthdir_x(chase_speed, angle);
        y += lengthdir_y(chase_speed, angle);
    }
    else if (state == "idle") {
        // Patrulha aleatória
        patrol_timer -= 1;
        if (patrol_timer <= 0) {
            patrol_angle = random(360);
            patrol_timer = patrol_change_time;
        }
        
        // Mover na direção de patrulha
        x += lengthdir_x(patrol_speed, patrol_angle);
        y += lengthdir_y(patrol_speed, patrol_angle);
    }
}
