require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
    erb(:main_page)
end

get('/display') do
    @p1weapon = "Player 1 " + params.fetch('p1').capitalize()
    @p2weapon = "Player 2 " + params.fetch('p2').capitalize()
    @result = params.fetch('p1').beats(params.fetch('p2'))
    erb(:main_page)
end

get('/computer') do
    @p1_weapon = "Player 1 " + params.fetch('p1').capitalize()
    @ai_weapon = "Computer "
    @ai_result = params.fetch('p1').beats('computer')
    erb(:main_page)
end
