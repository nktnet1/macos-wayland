# MacOS Wayland

Running containerised MacOS on Linux (wayland) using:
- https://github.com/sickcodes/Docker-OSX

## Prerequisites:
- use linux on [wayland](https://wayland.freedesktop.org)
- install [podman](https://podman.io) & [podman-compose](https://github.com/containers/podman-compose)

## Usage:
```
./start.sh MACOS_VERSION
```
Example:
```
./start.sh sonoma
```

Valid versions are:
- sonoma
- ventura
- monterey
- big-sur
- catalina

Note: you can configure the [podman-compose.yaml](podman-compose.yaml), e.g. to change the allocated RAM (default: 16).

Video instructions after the MacOS machine is running:
- https://www.youtube.com/watch?v=wLezYl77Ll8

## Further information

Setup instructions were inspired by:
- https://github.com/sickcodes/Docker-OSX/issues/410
- https://github.com/sickcodes/Docker-OSX/issues/733

Tested on Arch Linux, Hyprland.
