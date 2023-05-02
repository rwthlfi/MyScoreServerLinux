#!/bin/bash

# Lässt das Skript abstürzen sobald es einen Fehler gibt
#set -e

# Macht den MasterServer und seine Unterserver ausführbar
chmod +x /var/MyScore/Linux/MasterServer.x86_64 /var/MyScore/Linux/GameServer.x86_64 /var/MyScore/Linux/RemoteSpawner.x86_64

# Startet den Gameserver
/var/MyScore/Linux/MasterServer.x86_64
