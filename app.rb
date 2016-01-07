require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combination')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  File.read(File.join('public', 'main.css'))
  erb(:index)
end

get('/change_to_words') do
  @change_words_string = params.fetch('coin_combo').to_i.coin_slide()
   erb(:index)
end
