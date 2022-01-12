FROM ruby:2.4.0

WORKDIR /app/server/
COPY Gemfile /app/server/
RUN bundle install

COPY . /app/server/
RUN bundle exec rake db:setup

CMD ["bundle", "exec", "rackup", "-p", "9292", "-o", "0.0.0.0", "config.ru"]
