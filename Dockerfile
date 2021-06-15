# syntax=docker/dockerfile:1
FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y nodejs&& apt-get install -y postgresql-client
RUN mkdir /my-inss
WORKDIR /my-inss
COPY Gemfile /my-inss/Gemfile
COPY Gemfile.lock /my-inss/Gemfile.lock
COPY yarn.lock /my-inss/yarn.lock
COPY package.json /my-inss/package.json
COPY babel.config.js /my-inss/babel.config.js
COPY postcss.config.js /my-inss/postcss.config.js
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y yarn
RUN yarn install
RUN gem install bundler
RUN bundle install
COPY . /my-inss

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]