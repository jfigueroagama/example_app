FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /exapp
WORKDIR /exapp
ADD Gemfile /exapp/Gemfile
ADD Gemfile.lock /exapp/Gemfile.lock
RUN bundle install
ADD . /exapp
