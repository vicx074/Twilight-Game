// Evento Draw
if (paused) {
    // Desenhar fundo preto
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    
    // Configurar a cor do texto e a fonte
    draw_set_color(c_white);
    draw_set_font(ft_pause); // Usar a fonte ft_pause

    // Desenhar as opções do menu
    for (var i = 0; i < array_length(options); i++) {
        var texto = options[i];
        var largura_texto = string_width(texto);
        var altura_texto = string_height(texto);

        // Pegar a largura e altura da câmera
        var camera_width = camera_get_view_width(view_camera[0]);
        var camera_height = camera_get_view_height(view_camera[0]);

        // Calcular a posição central em relação à câmera
        var pos_x = (camera_width - largura_texto) / 2 + camera_get_view_x(view_camera[0]);
        var pos_y = (camera_height - altura_texto) / 2 + camera_get_view_y(view_camera[0]) + (i * 30); // Espaçamento entre as opções
        
        // Destaque a opção selecionada
        if (i == selected_option) {
            draw_set_color(c_yellow); // Cor para destacar a opção selecionada
        } else {
            draw_set_color(c_white); // Cor normal
        }

        // Desenhar texto centralizado
        draw_text(pos_x, pos_y, texto);
    }
}
