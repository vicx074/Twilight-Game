// Evento Step do obj_Camera

// Tente encontrar a instância do obj_mage
var player_instance = instance_find(obj_mage, 0); // Encontra a primeira instância de obj_mage

if (player_instance != noone) {
    // Pega a posição X e Y do obj_mage
    var target_x = player_instance.x;
    var target_y = player_instance.y;

    // Centralize a câmera com base na posição do obj_mage e mantenha dentro dos limites da sala
    var camera_x = clamp(target_x - camera_get_view_width(view_camera[0]) / 2, 0, room_width - camera_get_view_width(view_camera[0]));
    var camera_y = clamp(target_y - camera_get_view_height(view_camera[0]) / 2, 0, room_height - camera_get_view_height(view_camera[0]));

    // Atualiza a posição da câmera
    camera_set_view_pos(view_camera[0], camera_x, camera_y);
} else {
    // Se obj_mage não existir, coloque a câmera no centro da sala
    var center_x = (room_width - camera_get_view_width(view_camera[0])) / 2;
    var center_y = (room_height - camera_get_view_height(view_camera[0])) / 2;
    camera_set_view_pos(view_camera[0], center_x, center_y);
}
