FROM python:buster

RUN \
  echo "deb https://deb.nodesource.com/node_12.x buster main" > /etc/apt/sources.list.d/nodesource.list && \
  wget -qO- https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list && \
  wget -qO- https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -yqq nodejs yarn jq && \
  pip install -U pip && pip install pipenv && \
  npm i -g npm@^6 && \
  npm i -g netlify-cli && \
  rm -rf /var/lib/apt/lists/*
