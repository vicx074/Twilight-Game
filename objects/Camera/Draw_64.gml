// Evento Draw GUI do obj_hud

// Definições do HUD
var vida = global.vida; // Acesse a vida global do jogador
var espacamento = 40; // Ajuste o espaçamento entre os corações para acompanhar o aumento de tamanho
var x_inicial = 10; // Posição inicial no eixo x da tela
var y_inicial = 10; // Posição inicial no eixo y da tela
var escala = 1.5; // Defina o fator de escala (1.5 aumenta o tamanho em 50%)

// Desenhar os corações no canto superior esquerdo da tela
for (var i = 0; i < vida; i++) {
    draw_sprite_ext(spr_cora, 0, x_inicial + (i * espacamento), y_inicial, escala, escala, 0, c_white, 1);
}
