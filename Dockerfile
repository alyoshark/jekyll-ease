# to build: docker build -t jekyll-blog .

FROM ruby:alpine
RUN apk add --no-cache --virtual .build-deps build-base && \
    gem install github-pages && \
    apk del .build-deps

# to run: docker run -it --rm -p 127.0.0.1:4000:4000 -v "$PWD":/code -w /code jekyll-blog ash
# to serve: jekyll serve --host 0.0.0.0
