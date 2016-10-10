FROM ubuntu

RUN apt-get update && apt-get -y upgrade && apt-get install -y git vim tig curl zsh && useradd -m user && mkdir /home/user/dev

WORKDIR /home/user
VOLUME /home/user/dev
USER user
ENV TERM xterm-256color

CMD ["zsh"]

