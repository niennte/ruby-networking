require 'socket'

server = TCPServer.new 3001
session = server.accept

while true
  request = session.gets.chomp
  puts "They said \"#{request}\""
  session.puts "Why did you say \"#{request}\""
end

session.close