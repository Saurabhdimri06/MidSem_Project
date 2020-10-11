FROM node

#Adding project folder and changing dir
ADD . /project
WORKDIR /project

#Executing commands to build the application over docker
RUN npm install
RUN npm build

#Exposing port for viewing the application from outside
EXPOSE 3000

CMD ["npm", "start"]
