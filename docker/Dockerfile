FROM debian:9
run apt-get update && apt-get -y install --no-install-recommends texlive-xetex texlive-lang-cjk
MAINTAINER snyh@snyh.org

ADD fonts /usr/share/fonts/adobe
run apt-get install -y fontconfig make texlive-fonts-recommended fonts-lmodern lmodern gsfonts python-pygments

cmd cd /work && make
