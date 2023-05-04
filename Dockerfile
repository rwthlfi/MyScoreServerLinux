# Der Imagebuild-Prozess wird von einem bereits existierenden Ubuntu Image gestartet
FROM ubuntu:22.04
#FROM alpine:3.17

# Variablen für den Build-Prozess
RUN apt update && apt upgrade -y

COPY ./* /var/MyScore/Linux/
RUN rm /var/MyScore/Linux/Dockerfile

# Macht das Entrypoint-Skript ausführbar
RUN chmod +x /var/MyScore/Linux/entrypoint.sh

# ändert den Entrypoint, sodass beim starten des Images das entrypoint.sh Skript aufgerufen wird
ENTRYPOINT ["/var/MyScore/Linux/entrypoint.sh"]

