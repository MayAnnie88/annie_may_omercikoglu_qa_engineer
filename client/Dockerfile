FROM ruby:2.4.0

WORKDIR /app/client/
COPY Gemfile /app/client/
RUN bundle install

COPY . /app/client/

CMD ["bundle", "exec", "rackup", "-p", "9191", "-o", "0.0.0.0", "config.ru"]
