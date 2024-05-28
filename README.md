# Pico-w project using zig

This project requires [task](https://taskfile.dev/) and
[zig](https://ziglang.org/).

# Toolchain
Setup the toolchain according to the [getting-started-with-pico](https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf) guide.

# Pico-SDK
`task install-pico-sdk` will clone and initialize the pico-sdk. 

# Set DEVICE to the pico usb device 
Set the `DEVICE` env variable for your pico usb device in the *.env* file.

# Task options
`task build` builds the **uf2** binary and `task install` copies it to the pico `DEVICE`. 
Run `task ls` to see all project tasks.
