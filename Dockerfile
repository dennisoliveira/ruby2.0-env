FROM ruby:2.5.0-slim

RUN apt-get update && \
  apt-get install -y sqlite3 libsqlite3-dev build-essential nodejs && \
  apt-get clean

RUN gem install rails -v=4.2.10
# gem 'sqlite3', '~> 1.3.0'

RUN mkdir app
WORKDIR /app

EXPOSE 80
EXPOSE 3000