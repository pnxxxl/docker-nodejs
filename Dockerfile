# Базовый образ
FROM node:18-alpine

# Установить рабочую директорию
WORKDIR /usr/src/app

# Копировать package.json и установленные модули
COPY package*.json ./

# Установить зависимости
RUN npm install

# Копировать исходный код
COPY . .

# Установить порт
EXPOSE 3000

# Запустить приложение
CMD ["node", "app.js"]
