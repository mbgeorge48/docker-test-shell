FROM ubuntu

RUN apt-get update && apt-get install zsh git -y
RUN exec $SHELL
RUN useradd -ms /bin/bash mott
USER mott
RUN echo 'alias q="exit"' >> /home/mott/.zshrc
RUN echo 'PROMPT="%n@%m:%d$ "' >> /home/mott/.zshrc
WORKDIR /home/mott/