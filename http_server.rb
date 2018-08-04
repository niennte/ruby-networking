require 'socket'
server = TCPServer.new 3001

loop do
  session = server.accept

  while (request = session.gets) && (request.chomp.length > 0)
    puts "They said \"#{request.chomp}\""
  end

  puts "finished reading"

my_response = <<-HEREDOC
HTTP/1.1 200 OK

hello world it's #{Time.now.strftime "%H: %M: %S:(%L)"}
HEREDOC

  session.puts my_response
  session.close
end