FROM ruby:2.2.3
MAINTAINER Michael Kelly <jcisecurebuildinfo@yahoo.com>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs \
                       && apt-get clean \
                       && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Best to add image uploading to a hosted app
RUN apt-get install -y imagemagick \
                       && apt-get clean \
                       && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile Gemfile.lock ./
RUN gem install bundle && bundle install --jobs 20 --retry 5
COPY . ./

# Instructions Place this Dockerfile at the root of your Rails5 App
# Remember to chown $USER:USER . in the root directory of the Rails App
# Or chgrp if you are working with more than one contributor
