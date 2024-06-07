const pico = @import("pico-sdk.zig");

export fn main() c_int {
    const pin: u32 = 15;

    pico.stdio_init_all();
    pico.gpio_init(pin);
    pico._gpio_set_dir(pin, pico.GPIO_OUT);

    while (true) {
        pico._gpio_put(pin, true);
        pico.sleep_ms(1000);
        pico._gpio_put(pin, false);
        pico.sleep_ms(1000);
    }

    return 0;
}
