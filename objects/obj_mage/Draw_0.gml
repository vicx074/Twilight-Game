/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self(); // Isso desenha o sprite do jogador

// Definindo a distância de interação
var interaction_distance = 20; 
// Encontrando o cachorro mais próximo
var dog = instance_nearest(x, y, obj_dog); 

// Verificando se o cachorro está próximo
if (dog != noone && point_distance(x, y, dog.x, dog.y) <= interaction_distance) {
    draw_set_color(c_black); // Define a cor do texto
    draw_set_font(Font1); // Substitua "your_font_name" pelo nome da fonte que você criou
    
    // Desenha o texto acima do cachorro
    draw_text(dog.x, dog.y - 20, "Pressione F para interagir"); 
}

draw_self(); // Desenha o personagem normalmente

// Verifica se o jogador tem a chave e desenha a chave perto do personagem
if (has_key) {
    draw_sprite(spr_key, -1, x + 10, y - 10); // Ajuste de posição conforme necessário
}
