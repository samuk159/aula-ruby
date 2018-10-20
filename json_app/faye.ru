require "bundler/setup"
require "yaml"
require "faye"

Faye::WebSocket.load_adapter 'thin'

faye = Faye::RackAdapter.new(mount: '/faye', timeout: 45)

run faye