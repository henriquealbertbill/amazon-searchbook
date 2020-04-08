require 'capybara'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'report_builder'
require 'rspec'
require 'site_prism'
require_relative 'page_helper.rb'


World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)


Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOption' => { 'args' => ['--disable-inforbars']}
        ) 
   )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
    config.app_host = 'https://www.amazon.com.br/'
end