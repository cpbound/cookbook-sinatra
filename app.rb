require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get "/:cookbook" do
  puts params[:cookbook]
  erb :index
end

get "/about" do
  erb :about
end

get "/team/:username" do
  puts params[:username]
  "the username is #{params[:username]}"
end
