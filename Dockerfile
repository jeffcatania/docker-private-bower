FROM node:0.10

MAINTAINER Jeffrey Catania <jeffrey.catania@accenture.com> 

RUN npm install -g private-bower

COPY config/ /home/private-bower/
COPY config/launch.sh /home/private-bower/launch.sh
RUN chmod +x /home/private-bower/launch.sh

# Bower registry, git cache and svn cache ports
EXPOSE 5678
EXPOSE 6789
EXPOSE 7891

VOLUME ["/data"]

WORKDIR /home/private-bower

# Work around company firewalls blocking the git protocol
# RUN git config --global url."https://github.com/".insteadOf "git://github.com/"

CMD ["./launch.sh"]