FROM node:lts

LABEL Name="Open API doc tools" \
      Version="1.0"

RUN npm -g install \
      browser-sync \
      chokidar-cli \
      nodemon \
      npm-run-all \
      prettier \
      redoc-cli \
      serve \
      speccy \
      && npm cache clean --force

WORKDIR /app
