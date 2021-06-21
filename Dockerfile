FROM archlinux:latest
# resetting all gnupg keys
RUN rm -rf /etc/pacman.d/gnupg && \
    pacman-key --init && \
    pacman-key --populate archlinux
# resync all packages, check keyring, and ensure mirrors are up to date
RUN pacman -Syyuu \
    archlinux-keyring \
    base-devel \
    pacman-mirrorlist \
    --noconfirm
# install specific dependencies we need
RUN pacman -S --noconfirm \
    texlive-most \
    biber \
    minted
# copy all our files into the container ignoring .dockerignore'd files
COPY . /latex-presentation
# change directory and run build script
RUN cd /latex-presentation && \
    ./build
