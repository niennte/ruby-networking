require 'socket'
server = TCPServer.new 3001

session = server.accept
while (request = session.gets) && (request.chomp.length > 0)
  puts "They said \"#{request.chomp}\""
end

puts "finished reading"

my_response = <<-HEREDOC
HTTP/1.1 200 OK

hello world
HEREDOC

session.puts my_response
session.close
