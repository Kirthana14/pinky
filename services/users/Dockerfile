FROM node:latest
ENV http_proxy http://10.138.77.10:3128
ENV https_proxy http://10.138.77.10:3128
# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src

# add `/usr/src/node_modules/.bin` to $PATH
ENV PATH /usr/src/node_modules/.bin:$PATH

# install and cache app dependencies
ADD package.json /usr/src/package.json
RUN npm install

# start app
CMD ["npm", "start"]
