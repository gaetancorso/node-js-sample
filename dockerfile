# Utiliser une image officielle minimale
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY package.json package-lock.json ./

RUN npm i


# Copier le reste du code de l'application
COPY . .

# Exposer le port sur lequel l'application tourne
EXPOSE 8080


# Démarrer l'application
CMD ["npm", "start"]
