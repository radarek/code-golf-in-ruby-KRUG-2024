FROM ruby:2.7.4

COPY Gemfile Gemfile.lock ./

RUN gem update --system 3.3.22
RUN bundle


CMD bundle exec reveal-ck serve -h 0.0.0.0 -p 10000
