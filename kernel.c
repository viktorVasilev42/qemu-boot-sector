void main() {
    char *video_memory = (char*) 0xb8000;
    
    for (int i = 0; i < 64; i += 2) {
        video_memory[i] = ' ';
    }

    char *my_string = "VIXA";
    for (int i = 0; i < 4; i++) {
        video_memory[2 * i] = my_string[i];
        video_memory[2 * i + 1] = 0xF0;
    }
}
