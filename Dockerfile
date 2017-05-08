
FROM ruby

RUN apt-get -y update \
    && apt-get -y install libicu-dev

RUN gem install --no-ri --no-rdoc gollum github-markdown org-ruby

VOLUME /wiki
WORKDIR /wiki

CMD ["gollum", "--port", "2370"]

EXPOSE 2370
