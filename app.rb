require 'rubygems'
require 'sinatra'
require 'sass'
require 'compass'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = '/public/stylesheets'
  end

  set :haml, { :format => :html5 }
  set :scss, Compass.sass_engine_options
end

get '/stylesheets/app.css' do
  scss :app
end

get '/' do
    haml :index
end
