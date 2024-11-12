// Evento Key Pressed (W)
if (paused) {
    selected_option = (selected_option - 1 + array_length(options)) % array_length(options); // Move para cima
}
