# Der Imagebuild-Prozess wird von einem bereits existierenden Ubuntu Image gestartet
FROM ubuntu:22.04

# Pakete updaten
RUN apt update && apt upgrade -y

# Kopieren von benötigten Dateien
COPY ./* /var/MyScore/Linux/
RUN rm /var/MyScore/Linux/Dockerfile

# Ändert die Zugriffsberechtigungen von den Serverdateien
RUN chmod +x /var/MyScore/Linux/MasterServer.x86_64 /var/MyScore/Linux/GameServer.x86_64 /var/MyScore/Linux/RemoteSpawner.x86_64
# ändert den Entrypoint, sodass beim starten des Images das entrypoint.sh Skript aufgerufen wird
ENTRYPOINT ["/var/MyScore/Linux/entrypoint.sh"]

