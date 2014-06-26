#!/usr/bin/env ruby

require 'sinatra'

get '/' do
  "root path"
end

get '/redirect' do
  redirect to('/redirect_target')
end

get '/redirect_target' do
  "redirect_target"
end

get '/content' do
  send_file 'content.html'
end

get '/nested/content' do
  send_file "nested_content.html"
end

get '/content_target.html' do
 "content_target without slash"
end

get '/content/nested_target.html' do
  'nested content target'
end

