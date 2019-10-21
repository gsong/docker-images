FROM node:12

LABEL Name="Node with Chrome" \
      Version="12"

RUN npm install -g npm@6 pnpm && npm cache clean --force
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update && apt-get install --no-install-recommends -y \
  google-chrome-stable \
  # Needed for manage2 cwebp-bin
  libglu1-mesa \
  # nasm is needed for manage2 to compile mozjpeg properly
  nasm \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
