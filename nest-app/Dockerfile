FROM node:12-alpine
WORKDIR /usr/app
ARG ENVIRONMENT='production'
ARG APP_PORT=3000

ENV NODE_ENV=${ENVIRONMENT}
ENV APP_PORT=${APP_PORT}

COPY . .
RUN  npm --production=false ci
RUN  npm run build
EXPOSE 3000
CMD [ "npm", "run", "start:prod" ]