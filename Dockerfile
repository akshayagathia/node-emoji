
From node:8.15.0
WORKDIR "/app"
COPY package.json /app
RUN npm install
COPY . .
EXPOSE 3000

CMD ["npm", "run", "start"]
#RUN npm run build
#FROM nginx
#COPY --from=builder /app/built /usr/share/nginx/html
