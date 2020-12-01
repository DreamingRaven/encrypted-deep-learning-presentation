FROM archlinux:latest
# prepare pacman for use and generic dependencies
RUN pacman -Syyuu --noconfirm \
    archlinux-keyring
# install specific dependencies we need
RUN pacman -S --noconfirm \
    texlive-most \
    minted
# copy all our files into the container ignoring .dockerignore'd files
COPY . /latex-presentation
# change directory and run build script
RUN cd /latex-presentation && \
    ./build
