module Wordpress 
  class LogInError < StandardError; end
  class ContentError < StandardError; end
  class CheckboxNotChecked < StandardError; end
end

require 'rubygems'
require 'capybara'
require 'capybara/dsl'

Capybara.default_selector = :css

Capybara.default_driver = :selenium
Capybara.app_host = "http://wordpress-dev"
Capybara.register_driver :selenium do |app|
  Capybara::Driver::Selenium.new(app, :browser => :firefox)
end

World(Capybara)

