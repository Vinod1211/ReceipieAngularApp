FROM node as angular
WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

#FROM httpd:alpine3.15
#WORKDIR /usr/local/apache2/htdocs
#COPY --from=angular /app/dist/my-shopping-app .
CMD ["ng","serve","--host","0.0.0.0"]