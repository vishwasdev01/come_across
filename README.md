# For install node.js and postgres sql

RUN apt-get update && apt-get install -y nodejs postgresql-client

# For app folder

WORKDIR /app

# For copy gemfile and gemfile.lock

COPY Gemfile Gemfile.lock ./

# for install bundler

RUN gem install bundler && bundle install --binstubs

# After doing any changes in Docker file run this command 

docker-compose build

# For start server of docker

docker-compose up


# come_across
