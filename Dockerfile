FROM node:7

LABEL maintainer "Alpeware <info@alpeware.com>"

EXPOSE 8090

ENV COMMIT=1f60c0d20290a7485b29c0e62788344e012d19d9

WORKDIR /usr/src

RUN git clone https://github.com/ChromeDevTools/devtools-frontend.git \
    && cd devtools-frontend \
    && git checkout ${COMMIT}

WORKDIR /usr/src/devtools-frontend

CMD ["npm", "run", "server"]
