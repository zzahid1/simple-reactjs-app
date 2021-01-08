FROM node:latest

COPY app/ /var/www
WORKDIR /var/www
RUN ln -s /var/www/app/public /var/www/html 
RUN npm install -g create-react-app
RUN npm install



EXPOSE 80

ENTRYPOINT npm run start