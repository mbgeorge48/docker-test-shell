FROM ubuntu

RUN apt-get update && apt-get install zsh git curl gnupg vim -y
RUN exec $SHELL
RUN useradd -ms /bin/zsh mott
USER mott
RUN echo 'alias q="exit"' >> /home/mott/.zshrc
RUN echo 'PROMPT="%n@%m:%d$ "' >> /home/mott/.zshrc
WORKDIR /home/mott/
COPY example-node ./example-node
COPY example-python ./example-python

CMD ["/bin/zsh"]


# TODO
# Do a check to see if sudo is availible in the setup script