// Evento Draw de obj_carta

// Posições para centralizar a carta na tela
var pos_x = display_get_width() / 2 - sprite_width / 2;  // Posição X centralizada
var pos_y = display_get_height() / 2 - sprite_height / 2; // Posição Y centralizada

if (carta_aberta) {
    // Se a carta estiver aberta, desenha a sprite de carta aberta
    draw_sprite(spr_carta_aberta, 0, pos_x, pos_y);
    
    // Desenha o texto dentro da carta aberta
    var texto_x = pos_x + (sprite_width / 4); // Ajuste para centralizar o texto horizontalmente
    var texto_y = pos_y + (sprite_height / 4); // Ajuste para centralizar o texto verticalmente
    draw_text(texto_x, texto_y, "Texto da carta aberta!");
} else {
    // Se a carta estiver fechada, desenha a sprite de carta fechada
    draw_sprite(spr_carta, 0, pos_x, pos_y);
    
    // Se o jogador estiver perto, mostra a mensagem "Pressione 'F' para abrir"
    if (jogador_perto) {
        draw_text(pos_x, pos_y - 32, "Pressione 'F' para abrir");
    }
}
