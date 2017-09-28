
FROM ruby:stretch

# Install necessary library and gem file
# Clean up all the mess done by installing stuff
RUN apt-get -y update && \
    apt-get -y install libicu-dev && \
    gem install --no-ri --no-rdoc gollum github-markdown org-ruby &&\
    apt-get remove --purge -y software-properties-common && \
    apt-get autoremove -y && \
    apt-get clean && \
    apt-get autoclean && \
    echo -n > /var/lib/apt/extended_states && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/?? && \
    rm -rf /usr/share/man/??_*

# Set the base working directory
VOLUME /wiki
WORKDIR /wiki

CMD ["gollum", "--port", "2370"]

EXPOSE 2370
