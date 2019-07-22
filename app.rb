require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:new_triangle)
end

post ('/new_triangle') do
  @triangle = Triangle.new(params[:side1].to_i, params[:side2].to_i, params[:side3].to_i)
  erb(:check_triangle)
end
