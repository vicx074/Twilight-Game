// Evento: Desenhar
var button_spacing = 50; // Espaçamento entre as opções
var start_x = display_get_gui_width() / 2; // Posição X inicial (centralizado)

// Definindo textos correspondentes para cada tecla
var control_texts = [
    "A ou Seta Esquerda - Mover para a Esquerda",
    "W ou Seta Cima - Mover para Cima",
    "S ou Seta Baixo - Mover para Baixo",
    "D ou Seta Direita - Mover para a Direita",
    "Clique com o Mouse Esquerdo - Atirar"
];

// Calcular a altura total das opções
var total_height = array_length(control_texts) * button_spacing; // Altura total das opções
var start_y = (display_get_gui_height() - total_height) / 2; // Centralizar verticalmente

// Posição Y do título "Controles" (com 40 pixels do topo)
var title_y_position = 40; // Mantém o título 40 pixels abaixo do topo

// Desenhar o título "Controles" no topo
var title_font = ft_menu_title; // Fonte para o título
draw_set_font(title_font); // Usando a fonte do título
draw_set_color(c_yellow); // Cor amarela para o título
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Título "Controles" centralizado
draw_text(start_x, title_y_position, "Controles"); // Título centralizado

// Resetar fonte para o texto dos controles
draw_set_font(-1); // Resetar a fonte

// Desenhar os textos dos controles
for (var i = 0; i < array_length(control_texts); i++) {
    draw_set_halign(fa_center); // Centralizar horizontalmente
    draw_set_valign(fa_middle); // Centralizar verticalmente
    draw_set_color(c_white); // Cor do texto

    // Desenhar cada texto centralizado
    draw_text(start_x, start_y + i * button_spacing, control_texts[i]);
}

// Posição Y para ESC (com 40 pixels do fundo)
var esc_y_position = display_get_gui_height() - 40; // Posição 40 pixels acima do fundo
draw_set_color(c_yellow); // Cor diferente para a instrução
draw_set_halign(fa_center); // Centralizar horizontalmente
draw_set_valign(fa_middle); // Alinhamento vertical
draw_text(start_x, esc_y_position, "Pressione ESC para voltar ao menu."); // Instrução centralizada na parte inferior
