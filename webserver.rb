# ruby :

require 'socket'

port = 8888
server = TCPServer.new port
puts "Serving HTTP on port #{port} ..."

while socket = server.accept
  request = socket.gets
  puts request

  socket.print "HTTP/1.1 200\r\n"
  socket.print "Content-Type: text/html\r\n"
  socket.print "\r\n"
  socket.print "Hello world!"

  socket.close
end

# terminal : 
# demarrer => ruby webserver.rb
#  arreter => ctrl+c
