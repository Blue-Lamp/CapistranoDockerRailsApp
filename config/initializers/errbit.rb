# frozen_string_literal: true

Airbrake.configure do |config|
  config.host = 'http://159.89.17.175:3001'
  config.project_id = 1 # required, but any positive integer works
  config.project_key = '437ff2563e29cd24183b805a8731489e'

  # Uncomment for Rails apps
  config.environment = Rails.env
  config.ignore_environments = %w[development test]
  config.logger = Rails.logger
end
