require "socket"

socket = TCPSocket.new 'localhost', 3001

puts socket.gets

socket.close