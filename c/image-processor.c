// #include <emscripten.h>
#include <zbar.h>

// EMSCRIPTEN_KEEPALIVE
const char* scanImage(unsigned char* data, int width, int height) {
    zbar_image_t *img = zbar_image_create();
    zbar_image_set_size(img, width, height);
    zbar_image_set_format(img, *(int*)"Y800");
    zbar_image_set_data(img, data, width * height * 4, zbar_image_free_data);

    const zbar_symbol_t *sym = zbar_image_first_symbol(img);
    const char* result = zbar_symbol_get_data(sym);

    // tearing down
    zbar_image_destroy(img);

    return result;
}