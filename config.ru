require 'rack'
require 'rack/contrib/try_static'

use Rack::TryStatic, 
    :root => "_site",  # static files root dir
    :urls => %w[/],     # match all requests 
    :try => ['.html', 'index.html', '/index.html'] # try these postfixes sequentially
# otherwise 404 NotFound
run lambda { [404, {'Content-Type' => 'text/html'}, ['whoops! Not Found']]}

# vi: ft=ruby

# require 'bundler/setup'
# require 'sinatra/base'

# # The project root directory
# $root = ::File.dirname(__FILE__)

# class SinatraStaticServer < Sinatra::Base  

#   get(/.+/) do
#     send_sinatra_file(request.path) {404}
#   end

#   not_found do
#     send_sinatra_file('404.html') {"Sorry, I cannot find #{request.path}"}
#   end

#   def send_sinatra_file(path, &missing_file_block)
#     file_path = File.join(File.dirname(__FILE__), 'public',  path)
#     file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i  
#     File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
#   end

# end

# run SinatraStaticServer
