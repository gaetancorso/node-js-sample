# Utiliser une image officielle minimale
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY package.json package-lock.json ./

# Installer uniquement les dépendances de production
RUN npm ci --only=production

# Copier le reste du code de l'application
COPY . .

# Exposer le port sur lequel l'application tourne
EXPOSE 3000


# Démarrer l'application
CMD ["node", "server.js"]
