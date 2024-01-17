FROM node:18.16.0

ENV APP_ROOT /app

WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}

RUN npm run build
CMD node .output/server/index.mjs