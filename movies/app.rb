require 'sinatra'
require 'movies'
require 'movie_store'
require 'yaml/store'

store = MovieStore.new('movies.yml')

get('/movies') do
  @movies = store.all
  erb :index
end

get('/movies/new') do
  erb :new
end

post('/movies/create') do
  @movie = Movies.new
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['year']

  store.save(@movie)
  redirect '/movies/new'
end

get('/movies/:id') do
  id = params['id'].to_i
  @movie = store.find(id)
  erb :shows
end
