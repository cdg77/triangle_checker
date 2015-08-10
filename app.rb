require('sinatra')
require('./lib/triangle')

get('/') do
  erb(:home)
end

get('/triangle') do
  @results = Triangle.new(params['side_a'], params['side_b'], params['side_c'])
  erb(:triangle)
end
