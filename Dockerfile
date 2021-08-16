FROM ruby:latest


WORKDIR /app

RUN gem install hs1xx
RUN gem install senec

COPY . /app/

RUN cp /app/plug.rb /usr/local/bundle/gems/hs1xx-1.0.0/lib/hs1xx/plug.rb

CMD ["ruby", "/app/main.rb"]