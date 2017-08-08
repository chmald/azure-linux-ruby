require 'webrick'
options = {
    :Port => ENV["PORT"].to_i,
    :DirectoryIndex => ["hostingstart.html"],
    :DocumentRoot => '.'
}
server = WEBrick::HTTPServer.new(options)
server.mount_proc '/' do |req, res|
    res.body = 'Hello from RUBY!'
end

trap 'INT' do server.shutdown end

server.start
