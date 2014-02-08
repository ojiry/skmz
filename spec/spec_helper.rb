$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'active_model'
require 'skmz'

if ENV["TRAVIS"]
  require 'coveralls'
  Coveralls.wear!
end
