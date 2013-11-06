require 'socker'
load './lib/socket.rb'

use Rack::Static, :urls => ["/images", "/js", "/css", "/index.html"], :root => "public"
run Rack::URLMap.new('/' => TimeServer.new.to_app)
