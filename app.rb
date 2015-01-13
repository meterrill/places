require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get('/') do
  erb(:form)
end

get('/results') do

  #@result_string = phrase.method_name()
  erb(:results)
end
