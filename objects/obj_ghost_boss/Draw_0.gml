/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica se o fantasma está no modo "atingido"
// Evento Draw do obj_ghost
if (hit_timer > 0) {
    // Se o hit_timer está ativo, diminui o timer
    hit_timer--;

    // Desenha o fantasma em vermelho
    draw_set_color(c_red);
    draw_self(); // Desenha o fantasma
    draw_set_color(c_white); // Retorna à cor normal após desenhar

} else {
    // Se não está em hit, desenha normalmente
    draw_self(); // Desenha o fantasma normalmente
}
