/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Draw no obj_key
draw_self(); // Desenha a sprite do próprio obj_key

// Se o texto de interação estiver ativo, desenhe o fundo e o texto
// Evento Draw do obj_key
if (show_interact_text) { 
    var text = "Aperte F para interagir";
    var text_width = string_width(text); // Largura do texto
    var text_height = string_height(text); // Altura do texto
    var margin = 4; // Margem ao redor do texto para o fundo branco

    // Calcula a posição do retângulo branco
    var box_x1 = x - (text_width / 2) - margin;
    var box_y1 = y - sprite_height - text_height - margin - 4; // Ajuste para a posição
    var box_x2 = x + (text_width / 2) + margin;
    var box_y2 = y - sprite_height + margin - 4;

    // Desenha o fundo branco
    draw_set_color(c_white);
    draw_rectangle(box_x1, box_y1, box_x2, box_y2, false);

    // Desenha o texto centralizado no fundo branco
    draw_set_color(c_black);
    draw_text(x - (text_width / 2), y - sprite_height - text_height - 4, text);
}
