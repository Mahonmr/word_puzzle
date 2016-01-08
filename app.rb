require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
require('pry')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/show_puzzle') do
  if @puzzle = params.fetch('phrase_to_puzzle').strip_vowel_replace_with_dash()
    erb(:show_puzzle)
  else
    erb(:index)
  end
end
