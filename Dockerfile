FROM ruby:latest
RUN gem install yard
RUN gem install yard-rspec
RUN gem install yard-cucumber

RUN mkdir /app
RUN mkdir /app/.yard

WORKDIR /app
VOLUME /app

COPY config /app/.yard/config
COPY yardopts /app/.yardopts

CMD yard server --reload
