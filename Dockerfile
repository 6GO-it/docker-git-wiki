
FROM ruby:alpine3.6

LABEL maintainer=open-source@6go.it \
    vendor=6go.it \
    version=1.1.1

# Install necessary library and gem file
# Clean up all the mess done by installing stuff
RUN apk --update add alpine-sdk icu-dev git rsync openssh \
    && gem install --no-ri --no-rdoc gollum github-markdown org-ruby \
    && rm -rf /var/cache/apk/* \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /usr/share/man/?? \
    && rm -rf /usr/share/man/??_*

# Set the base working directory
VOLUME /wiki
WORKDIR /wiki

CMD ["gollum", "--port", "2370"]

EXPOSE 2370
