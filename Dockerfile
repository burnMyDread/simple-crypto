FROM  archlinux:base-devel
RUN pacman -Syyu --noconfirm && pacman -S --noconfirm openssl jhead git go libmcrypt mhash libjpeg-turbo
RUN (cd /opt && git clone https://aur.archlinux.org/yay.git)
RUN useradd activist
RUN mkdir /home/activist
RUN chown -R activist:users /opt/yay
RUN chown -R activist:users /home/activist
RUN echo "%wheel ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN usermod -a -G wheel activist
USER activist
RUN (cd /opt/yay && makepkg -s --noconfirm)
RUN (cd /opt/yay && sudo pacman -U --noconfirm yay-*.pkg.tar.zst)
RUN yay -S --noconfirm --nodiffmenu --noeditmenu steghide
ADD *.sh /usr/bin/
