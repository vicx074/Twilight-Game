/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Definir a fonte, cor e alinhamento do texto
// Definir a fonte, cor e alinhamento do texto
draw_set_font(Font1);
draw_set_color(c_black);
draw_set_halign(fa_center); // Centralizar o texto horizontalmente

// Ajustar a posição x com o deslocamento desejado
var x_offset = 50; // Valor de deslocamento para a direita
var y_offset = -32; // Manter o texto acima do player

// Definir as dimensões do fundo branco
var text_width = string_width("Use o mouse 1 para atirar") + 10; // Largura do texto com margem
var text_height = string_height("Use o mouse 1 para atirar") + 10; // Altura do texto com margem
var rect_x1 = x + x_offset - text_width / 2;
var rect_y1 = y + y_offset - text_height / 2;
var rect_x2 = x + x_offset + text_width / 2;
var rect_y2 = y + y_offset + text_height / 2;

// Desenhar o fundo branco
draw_set_color(c_white);
draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false); // false para preenchido

// Desenhar o texto em preto sobre o fundo branco
draw_set_color(c_black);
draw_text(x + x_offset, y + y_offset, "Use o mouse 1 para atirar");

// Resetar as configurações de cor e alinhamento após o draw
draw_set_color(c_white);
draw_set_halign(fa_left);
