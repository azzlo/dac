FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
# Use Gemstash with my local ip docker-host
# Change your IP with your docker-host-ip
# And run gemstash container xD
RUN bundle config mirror.https://rubygems.org http://192.168.6.121:9292
RUN bundle config mirror.https://rubygems.org.fallback_timeout 3
RUN bundle install
COPY . /myapp