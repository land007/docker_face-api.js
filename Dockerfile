FROM land007/node:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN apt-get install -y python
RUN apt-get install -y build-essential

RUN cd /node_ && git clone https://github.com/justadudewhohacks/face-api.js.git
RUN . $HOME/.nvm/nvm.sh && cd /node_/face-api.js/ && npm i
RUN . $HOME/.nvm/nvm.sh && cd /node_/face-api.js/examples/examples-nodejs/ && npm i

#docker stop tfjs ; docker rm tfjs ; docker run -it --privileged --name tfjs land007/face-api.js:latest
