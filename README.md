# MacOS Wayland

Running containerised MacOS on Linux (wayland) using:
- https://github.com/sickcodes/Docker-OSX

For legal reasons, please note that Apple's Terms of Service require this software to be run on Apple hardware.

## Prerequisites:
- use linux on [wayland](https://wayland.freedesktop.org)
- install [podman](https://podman.io) & [podman-compose](https://github.com/containers/podman-compose)

## Usage:
```
./start.sh MACOS_VERSION
```
Example:
```
./start.sh monterey
```

Valid [MacOS versions](https://en.wikipedia.org/wiki/MacOS_version_history#Releases) are:
- sonoma (v14)
- ventura (v13)
- monterey (v12) (tested)
- big-sur (v11) (tested)
- catalina (v10.15) (tested)

Note: you can configure the [podman-compose.yaml](podman-compose.yaml), e.g. to change the allocated RAM (default: 16).

Video instructions after the MacOS machine is running:
- https://www.youtube.com/watch?v=wLezYl77Ll8

## Further information

Setup instructions were inspired by:
- https://github.com/sickcodes/Docker-OSX/issues/410
- https://github.com/sickcodes/Docker-OSX/issues/733

Tested on Arch Linux, Hyprland.
