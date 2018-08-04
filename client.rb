require "socket"

socket = TCPSocket.new 'localhost', 3001

while true
  msg = $stdin.gets.chomp
  socket.puts( msg )
  puts socket.gets.chomp
end

socket.close