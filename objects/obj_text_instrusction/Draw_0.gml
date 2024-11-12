/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Draw de obj_text_instruction

// Definir a fonte, cor e alinhamento do texto
draw_set_font(Font1);
draw_set_color(c_black);
draw_set_halign(fa_center); // Centralizar o texto horizontalmente

// Definir as dimensões do fundo branco
var text_width = string_width("Use W, A, S, D para andar") + 10; // Largura do texto com uma margem
var text_height = string_height("Use W, A, S, D para andar") + 10; // Altura do texto com uma margem
var rect_x1 = x - text_width / 2; // Coordenada x inicial do retângulo
var rect_y1 = y - text_height / 2; // Coordenada y inicial do retângulo
var rect_x2 = x + text_width / 2; // Coordenada x final do retângulo
var rect_y2 = y + text_height / 2; // Coordenada y final do retângulo

// Desenhar o fundo branco
draw_set_color(c_white);
draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false); // false para retângulo preenchido

// Desenhar o texto em preto sobre o fundo branco
draw_set_color(c_black);
draw_text(x, y, "Use W, A, S, D para andar");

// Resetar as configurações de cor e alinhamento após o draw
draw_set_color(c_white);
draw_set_halign(fa_left);
