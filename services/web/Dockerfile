FROM node:latest
ENV http_proxy http://10.138.77.10:3128
ENV https_proxy http://10.138.77.10:3128
# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# install and cache app dependencies
ADD package.json /usr/src/app/package.json
RUN npm install
RUN npm install react-scripts@0.9.5 -g

# start app
CMD ["npm", "start"]
