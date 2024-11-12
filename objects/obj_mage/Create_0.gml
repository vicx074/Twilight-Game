// @description _Camera
// Você pode escrever seu código neste editor


// Definindo a vida do jogador
if (!variable_global_exists("vida_inicializada")) {
    global.vida = 3; // Define a vida inicial do jogador apenas uma vez
    global.vida_inicializada = true;
}


posicao_inicial_x = x; // Armazena a posição inicial X
posicao_inicial_y = y; // Armazena a posição inicial Y
has_key = false; // Inicialmente, o jogador não tem a chave
// Evento Create do obj_mage

move_speed = 1; // Velocidade de movimentação normal
dash_speed = 3; // Velocidade durante o dash
dash_duration = 10; // Duração do dash em frames
dash_cooldown = 30; // Tempo entre dashes
dash_timer = 0; // Temporizador do dash
dash_cooldown_timer = 0; // Temporizador de cooldown para o dash
can_dash = true; // Controle para permitir o dash

move_direction_x = 0; // Inicializa a direção do movimento horizontal
move_direction_y = 0; // Inicializa a direção do movimento vertical




var cam_width = 320;  // Largura da área visível pela câmera
var cam_height = 180; // Altura da área visível pela câmera

// Criando a câmera e configurando para seguir o jogador
camera = camera_create_view(0, 0, cam_width, cam_height, 0, self, cam_width / 2, cam_height / 2, -1, -1);
view_set_camera(0, camera);

// Checar se o player está próximo dos totens
// Criar o texto próximo aos totens com um deslocamento para a direita
if (instance_exists(obj_totem1)) {
    var totem = instance_nearest(x, y, obj_totem1);
}

cor_original = c_white; // Cor original do jogador
cor_dano = c_red; // Cor temporária quando toma dano
atingido = false; // Flag para saber se o jogador tomou dano
image_blend = cor_original; // Garante que começa na cor original

is_on_lava = false; // Variável para controlar se o player está sobre o lava
