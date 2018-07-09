FROM ruby:2.5.1

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev htop \
postgresql-client libproj-dev nodejs git curl nano lsof imagemagick

# Set the root of Rails application
ENV RAILS_APP_ROOT=/var/www/CapistranoDockerizedRailsApp
RUN mkdir -p $RAILS_APP_ROOT

# Set working directory to the root path of the Rails app
WORKDIR $RAILS_APP_ROOT

# Do not install gem documentation
RUN echo 'gem: --no-ri --no-rdoc' > ~/.gemrc

COPY Gemfile* ./

RUN gem install bundler && bundle install -r5 -j20

# Now copy the application code to the application directory
COPY . $RAILS_APP_ROOT
COPY ./containers/production/rails/database.yml $RAILS_APP_ROOT/config

# RUN DB_ADAPTER=nulldb RAILS_ENV=production SECRET_KEY_BASE=temp_for_precompile bundle exec rails assets:precompile

EXPOSE 3000
