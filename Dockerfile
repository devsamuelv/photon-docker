FROM ubuntu

WORKDIR /opt/photonvision

EXPOSE 5800 
EXPOSE 5801

COPY install.sh ./install.sh
COPY exec.sh ./exec.sh
COPY photonvision-v2024.2.1-linuxx64.jar /opt/photonvision/photonvision.jar

RUN apt update
RUN apt install openjdk-11-jdk -y

RUN chmod +x install.sh
# RUN ./install.sh

RUN chmod +x exec.sh

ENTRYPOINT [ "/opt/photonvision/exec.sh" ]