FROM ruby:2.7-alpine

RUN gem install rake

RUN set -ex  \
    && apk add --update \
        nodejs \
        shared-mime-info \
    && apk add --virtual build-dependencies \
           build-base \
           ruby-dev \
    && gem install zendesk_apps_tools \
    && rm -rf /var/cache/apk/* 

WORKDIR /data
COPY run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh
ENTRYPOINT ["run.sh"]

CMD ["start"]

EXPOSE 4567
