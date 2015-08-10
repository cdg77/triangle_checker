require('sinatra')
require('./lib/triangle')

get('/') do
  erb(:home)
end
