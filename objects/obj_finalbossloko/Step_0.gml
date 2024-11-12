// Evento Step do obj_boss

// Verifica se o obj_mage existe
if (instance_exists(obj_mage)) {
    // Move o boss em direção ao obj_mage
    move_towards_point(obj_mage.x, obj_mage.y, speed);

    // Verifica a direção para virar o sprite
    if (obj_mage.x < x) {
        image_xscale = -1; // Vira para a esquerda
    } else {
        image_xscale = 1; // Vira para a direita
    }
}
