// Evento: Desenhar GUI
// Definindo as fontes para título e opções
var title_font = ft_menu_title; // Fonte para o título (já configurada no GameMaker)

// Desenhar o título do jogo no topo
draw_set_font(title_font); // Usando a fonte do título
draw_set_color(c_yellow); // Cor amarela para o título
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Título no topo (Y fixo para posicionar no topo)
var title_y_position = 50; // Posição fixa para o título
draw_text(display_get_gui_width() / 2, title_y_position, "Vestiges of Twilight"); // Título centralizado

var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura / 2;

// Desenhar as opções do menu
draw_set_font(ft_menu); // Usando a fonte original para o menu
for (var i = 0; i < op_max; i++) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    
    if (index == i) {
        draw_set_color(c_yellow);    
    } else {
        draw_set_color(c_white);    
    }
    
    draw_text(x1, y1 + (dist * i), opcoes[i]);
}

draw_set_font(-1); // Resetar a fonte

