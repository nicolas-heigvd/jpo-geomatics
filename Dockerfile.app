FROM ruby:slim-bullseye

COPY Gemfile /app/

WORKDIR /app

RUN apt-get -y -qq update \
  && apt-get -y upgrade \
  && DEBIAN_FRONTEND=noninteractive apt-get -y install --fix-missing \
     --no-install-recommends \
     build-essential \
     make \
     gcc \
     libpq5 \
     libpq-dev \
     nodejs \
     npm \
     redis-server \
     tzdata \
  && npm install -g yarn \
  && bundler install \
  && bundle update \
  && ldconfig

# Unflagg in production
#COPY . /app/

