# Utiliser une image Ubuntu comme base
FROM ubuntu:latest

# Mise à jour des paquets et installation de Node.js
RUN apt-get update && \
    apt-get install -y nodejs npm

# Installation de MySQL client
RUN apt-get install -y mysql-client

# Créer et définir le répertoire de travail dans le conteneur
WORKDIR /ubuntunode

# Copier le fichier package.json et package-lock.json
COPY package*.json ./

# Installation des dépendances Node.js
RUN npm install

# Copier les fichiers de l'application
COPY . .

# Exposer le port sur lequel l'application s'exécute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]