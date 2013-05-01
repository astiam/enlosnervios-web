require 'rubygems'
require 'sinatra'
require 'json'

get '/' do
    haml :index, :locals => {:title => "En Los Nervios"}
end
