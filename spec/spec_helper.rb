$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'active_model'
require 'action_controller'
require 'rails/engine'
require 'skmz'

require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'

app_dir = File.expand_path('../../app', __FILE__)
Dir.glob("#{app_dir}/controllers/**/*.rb").each { |f| require f }

if ENV["TRAVIS"]
  require 'coveralls'
  Coveralls.wear!
end
