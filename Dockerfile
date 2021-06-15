# syntax=docker/dockerfile:1
FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y nodejs&& apt-get install -y postgresql-client
RUN mkdir /my-inss-app
WORKDIR /my-inss-app
COPY Gemfile /my-inss-app/Gemfile
COPY Gemfile.lock /my-inss-app/Gemfile.lock
COPY yarn.lock /my-inss-app/yarn.lock
COPY package.json /my-inss-app/package.json
COPY babel.config.js /my-inss-app/babel.config.js
COPY postcss.config.js /my-inss-app/postcss.config.js
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y yarn
RUN yarn install
RUN gem install bundler
RUN bundle install
COPY . /my-inss-app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]