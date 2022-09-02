FROM ubuntu:18.04
#COPY build/web /usr/local/tomcat/webapps/web
RUN  apt-get update -y  wget git curl zip unzip tar \
     apt-get install  ca-certificates curl gnupg lsb-release -y \ 
     mkdir -p /etc/apt/keyrings \
     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
     echo \
     "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update -y 
RUN apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
RUN docker --version

