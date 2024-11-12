/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento de colisão com obj_magic_ball
if (instance_exists(obj_magic_ball)) {
    // Troca a cor do espelho ao ser atingido
    if (object_index == obj_black_mirror) {
        instance_change(obj_white_mirror, true);
    } else if (object_index == obj_black_mirror_1) {
        instance_change(obj_white_mirror_1, true);
    } else if (object_index == obj_white_mirror) {
        instance_change(obj_black_mirror, true);
    } else if (object_index == obj_white_mirror_1) {
        instance_change(obj_black_mirror_1, true);
    }
    
    // Destrói a magia após o impacto
    with (obj_magic_ball) instance_destroy();
}
