FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Hugging Face yêu cầu port 7860 để hiển thị giao diện web của bot
ENV PORT=7860
EXPOSE 7860

CMD ["node", "index.js"]
