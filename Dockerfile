# Der Imagebuild-Prozess wird von einem bereits existierenden Ubuntu Image gestartet
FROM ubuntu:22.04
#FROM alpine:3.17

# Variablen für den Build-Prozess
RUN apt update && apt upgrade -y

COPY ./Linux /var/MyScore/Linux
# Kopiert das Entrypoint-Skript an die richtige Stelle
COPY entrypoint.sh /

# Macht das Entrypoint-Skript ausführbar
RUN chmod +x /entrypoint.sh

# ändert den Entrypoint, sodass beim starten des Images das entrypoint.sh Skript aufgerufen wird
ENTRYPOINT ["/entrypoint.sh"]

