FROM ruby:2.3.3

# Install packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client-9.4

# Change working directory
WORKDIR /app

# Update RubyGems to addres vulnerabilities
# SEE: https://www.ruby-lang.org/en/news/2017/08/29/multiple-vulnerabilities-in-rubygems/
RUN gem update --system

# Copy necessary files to container
COPY Gemfile Gemfile.lock ./

RUN bundle install --binstubs

# Copy the entire app
COPY . .

# Configure an entry point, so we don't need to specify
# "bundle exec" for each of our commands.
ENTRYPOINT ["bundle", "exec"]
