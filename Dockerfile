FROM ruby:3.0.0-buster
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
