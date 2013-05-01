require 'rubygems'
require 'sinatra'
require 'mongo'
require 'json'

DB = Mongo::Connection.new.db("elndb", :pool_size => 5, :timeout => 5)

get '/' do
    haml :index, :locals => {:title => "En Los Nervios"}
end
