FROM ruby:2.0.0-slim

RUN apt-get update && \
  apt-get install -y sqlite3 libsqlite3-dev build-essential && \
  apt-get clean

RUN mkdir app && chown -R 1000:1000 /app
WORKDIR /app

RUN gem install rails -v=4.0.0