FROM ubuntu:latest

RUN apt-get update && apt-get install git p7zip-full wget nodejs -y

RUN useradd -m --user-group -p $(echo 'infected' | openssl passwd -1 -stdin) snorpy

RUN git clone https://github.com/chrisjd20/Snorpy.git /opt/snorpy

RUN 7z x /opt/snorpy/node_modules.zip -o/opt/snorpy/

RUN chown snorpy:snorpy /opt/snorpy -R

RUN apt-get remove git p7zip-full wget -y

EXPOSE 8080
USER snorpy
WORKDIR /opt/snorpy
ENTRYPOINT ["node","/opt/snorpy/app.js"]
