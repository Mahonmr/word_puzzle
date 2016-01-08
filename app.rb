require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/show_puzzle') do
#   @change_words_string = params.fetch('coin_combo').to_i.coin_slide()
  erb(:index)
end
