ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache git nodejs npm

RUN mkdir -p /opt/app
RUN git clone https://github.com/weinzii/vidaa-edge.git /opt/app
WORKDIR /opt/app
RUN npm install

ENV JELLYFIN_URL=https://videos.eloque.nz
COPY start.sh start.sh
RUN chmod a+x start.sh

ENTRYPOINT [ "./start.sh" ]
