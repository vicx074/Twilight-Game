// Se a carta estiver fechada
if (!is_open) {
    sprite_index = spr_carta;  // Garantir que a carta fechada seja sempre o sprite correto
    draw_self();  // Desenha o sprite da carta fechada

    // Se o jogador está perto, exibe a mensagem para abrir
    if (jogador_perto) {
        draw_set_color(c_black);  // Define a cor do texto como preto
        draw_text(x, y - 40, "Pressione F para abrir");  // Texto preto
    }

    // Verifica se a tecla F foi pressionada e o jogador está perto para abrir a carta
    if (keyboard_check_pressed(ord("F")) && jogador_perto) {
        is_open = true;  // Abre a carta
    }

} else {
    // Garantir que o sprite aberto seja o correto
    sprite_index = spr_carta_aberta;  // A carta aberta deve ser o sprite correto
    var centro_x = room_width / 2;
    var centro_y = room_height / 2;

    // Define um fator de escala para o sprite da carta aberta (ajuste conforme necessário)
    var escala = 0.1;  // Ajuste o valor para que a carta fique em um tamanho adequado

    // Calcula a posição para centralizar o sprite da carta
    var carta_x = centro_x - (sprite_width * escala * 0.5); // Centraliza a posição X
    var carta_y = centro_y - (sprite_height * escala * 0.5); // Centraliza a posição Y

    // Desenha o sprite da carta aberta no centro da room com redimensionamento menor
    draw_sprite_ext(spr_carta_aberta, -1, carta_x, carta_y, escala, escala, 0, c_white, 1);

    // Verifica se a tecla ESC foi pressionada para fechar a carta
    if (keyboard_check(vk_escape)) {
        is_open = false;  // Fecha a carta
    }
}
