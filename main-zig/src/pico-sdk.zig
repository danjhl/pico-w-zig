pub extern fn stdio_init_all() void;
pub extern fn sleep_ms(ms: u32) void;
pub extern fn gpio_init(gpio: u32) void;
pub extern fn _gpio_set_dir(gpio: u32, out: bool) void;
pub extern fn _gpio_put(gpio: u32, on: u32) void;
