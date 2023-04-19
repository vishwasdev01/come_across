FROM ruby:3.0.0

RUN apt-get update && apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --binstubs

RUN apt-get update && bundle exec rails webpacker:install
COPY . .

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
