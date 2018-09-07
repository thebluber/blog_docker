FROM alpine:latest

# Install packages
RUN apk --update add \
  build-base \
  zlib-dev \
  libffi-dev \
  bash \
  ruby=2.5.1-r2 \
  ruby-bundler \
  ruby-dev \
  ruby-irb \
  ruby-nokogiri \
  ruby-bigdecimal=2.5.1-r2 \
  nodejs \
  tmux \
  ttf-dejavu \
  tzdata \
  vim \
  wget \
  postgresql-dev \
  yarn

WORKDIR /app
EXPOSE 3000

ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install


# Add files
Add . .
