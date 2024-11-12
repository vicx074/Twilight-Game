/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Variáveis para verificar o estado inicial e alternado dos espelhos
var num_black = instance_number(obj_black_mirror) + instance_number(obj_black_mirror_1);
var num_white = instance_number(obj_white_mirror) + instance_number(obj_white_mirror_1);

// Verifica se todos os espelhos são da mesma cor
if (num_black == 4 || num_white == 4) { 
    // Puzzle resolvido!
    //show_message("Puzzle resolvido!"); // Mensagem de resolução
    
    // Destrói a porta enigma para indicar a solução do puzzle
    if (instance_exists(obj_enigma_door)) {
        with (obj_enigma_door) {
            instance_destroy();
        }
    }

    // Destrói o controlador para parar a verificação
    instance_destroy();
}
