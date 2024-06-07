# include "pico/stdlib.h"
# include "pico/cyw43_arch.h"

void _gpio_set_dir(uint32_t gpio, bool out) 
{
    gpio_set_dir(gpio, out);
}

void _gpio_put(uint32_t gpio, bool value)
{
    gpio_put(gpio, value);
}
