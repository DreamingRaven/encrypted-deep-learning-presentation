# choose from image:tag on hub.docker.com registry
FROM archlinux:latest

# prepare pacman for use
RUN pacman -Syyuu --noconfirm \
    archlinux-keyring

# now lets install something to play with (htop)
RUN pacman -S --noconfirm \
    htop
