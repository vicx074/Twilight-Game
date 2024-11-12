/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica se o fantasma está no modo "atingido"
if (hit_timer > 0) {
    draw_set_color(c_red); // Muda para vermelho
    draw_self(); // Desenha o fantasma em vermelho
    draw_set_color(c_white); // Retorna à cor normal
} else {
    draw_self(); // Desenha o fantasma normalmente
}
