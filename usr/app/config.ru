require 'socker'
load './lib/socket.rb'

use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public",
  :index => 'index.html'

run Rack::URLMap.new('/' => Rack::File.new('public'), '/socket' => TimeServer.new.to_app)
