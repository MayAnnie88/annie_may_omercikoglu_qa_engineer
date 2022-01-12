require 'capybara/rspec'

Dir.glob(File.expand_path('lib/**/*.rb')) { |file| require file }
Capybara.app = Application.new
