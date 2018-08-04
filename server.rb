require 'socket'

server = TCPServer.new 3001

while true
  session = server.accept
  message = "hello it's #{Time.now}"
  puts "sending message: #{message}"
  session.puts message
end

session.close