FROM node:alpine as angular
WORKDIR /app
COPY package*.json ./
#RUN npm install -g @angular/cli
RUN npm install
COPY . .
RUN npm run build -- --prod
FROM nginx:alpine
#WORKDIR /usr/local/apache2/htdocs
COPY --from=angular /app/dist/my-shopping-app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
#CMD ["ng","serve","--host","0.0.0.0"]