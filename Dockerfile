FROM node:14-alpine

# Installer git, python et outils nécessaires
RUN apk add --no-cache git python3 make g++

# Cloner le dépôt (remplacez par l'URL de votre fork)
RUN git clone -q https://github.com/EZazagrouze/todo-app.git

# Définir le répertoire de travail
WORKDIR /todo-app

# Copier les fichiers locaux
COPY . .

# Installer les dépendances
RUN yarn install --production

# Démarrer l'application
CMD ["node", "/src/index.js"]
