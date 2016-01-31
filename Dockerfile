# Arch Linux based docker container with a ssh server pacaur for AUR access
FROM greyltc/sshd
MAINTAINER Grey Christoforo <grey@christoforo.net>

# setup aur access for a new user "docker"
ADD add-aur.sh /usr/sbin/add-aur
RUN add-aur docker

# now to install from the AUR, you can do this:
# su docker -c "pacaur -S --noprogressbar --noedit --noconfirm $PACKAGENAME"
