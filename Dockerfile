FROM node:8.9

WORKDIR /app
RUN apt-get update && DEBIAN_FRONTEND="noninteractive"

RUN npm install -g yarn


RUN apt-get install -y chromium  xvfb libgconf-2-4
ENV DISPLAY :99
ENV CHROME_BIN /usr/bin/chromium

COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
