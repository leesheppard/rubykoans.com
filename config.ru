$:.unshift(File.dirname(__FILE__)).uniq!
require 'rubykoans'
run Sinatra::Application
