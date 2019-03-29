FROM ruby:2.3-alpine

RUN gem install rake

RUN set -ex  \
    && apk add --update \
        nodejs \
    && apk add --virtual build-dependencies \
           build-base \
           ruby-dev \
    && gem install zendesk_apps_tools \
    && rm -rf /var/cache/apk/* 

WORKDIR /data

CMD ["zat", "server", "-b", "0.0.0.0"]

EXPOSE 4567
