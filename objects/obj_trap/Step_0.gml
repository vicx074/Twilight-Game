/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Step do obj_skeleton
if (instance_exists(obj_mage)) {
    // Calcule a distância até o obj_mage
    var distance_to_mage = point_distance(x, y, obj_mage.x, obj_mage.y);

    // Debug: Mostrar a distância no console
    show_debug_message("Distância do esqueleto ao mago: " + string(distance_to_mage));

    // Verifica se está dentro da distância de ativação
    if (distance_to_mage <= activation_distance) {
        // Atirar no obj_mage
        shoot_timer -= 1; // Decrementa o timer de tiro
        if (shoot_timer <= 0) {
            // Criar o ataque do esqueleto
            var bullet = instance_create_layer(x, y, "Instances", obj_attack_skeleton);
            var angle = point_direction(x, y, obj_mage.x, obj_mage.y); // Calcular a direção para o mago
            bullet.direction = angle; // Definir a direção do ataque
            shoot_timer = shoot_delay; // Reiniciar o timer de tiro
        }
    }
}
