# This file is copied to spec/ when you run 'rails generate rspec:install'

require 'rubygems'
require 'spork'

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

  require 'rspec/rails'
  require "factory_girl_rails"
  require "database_cleaner"
  require "simplecov"

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|

  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end
