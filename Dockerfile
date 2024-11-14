# Usar a imagem base do Node.js
FROM node:18-alpine

# Definir o diretório de trabalho
WORKDIR /app

# Copiar os arquivos package.json e package-lock.json
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar o restante do código
COPY . .

# Expor a porta 3000
EXPOSE 3000

# Iniciar o servidor
CMD ["npm", "run", "start"]
