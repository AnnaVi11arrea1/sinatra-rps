require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


get("/") do
  erb(:home)
end

get("/rock") do
  erb(:rock)
end

get("/paper") do
  erb(:paper)
end

get("/scissors") do
  erb(:scissors)
end
