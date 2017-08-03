require 'webrick'
options = {
    :Port => ENV["PORT"].to_i,
    :DirectoryIndex => ["index.rb"],
    :DocumentRoot => '.'
}
WEBrick::HTTPServer.new(options).start
