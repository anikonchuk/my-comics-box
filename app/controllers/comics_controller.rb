require 'rack-flash'
class ComicsController < ApplicationController
  use Rack::Flash

  get '/comics' do
    if logged_in?
      @comics = Comic.all
      erb :'/comics/index'
    else
      redirect '/'
    end
  end

  get '/comics/new' do
    if logged_in?
      erb :'/comics/create'
    else
      redirect '/'
    end
  end

  get '/comics/:id' do
    if logged_in?
      @comic = Comic.find_by_id(params[:id])
      erb :'/comics/show'
    else
      redirect '/'
    end
  end

  post '/comics' do
    user = current_user
    comic = Comic.new(name: params[:name], notes: params[:notes])
    writer = Writer.find_or_create_by(name: params[:writer])
    artist = Artist.find_or_create_by(name: params[:artist])
    if comic.save
      user.comics << comic
      writer.comics << comic
      artist.comics << comic
      flash[:message] = "Your comic has been created!"
      redirect "/comics/#{comic.id}"
    else
      flash[:message] = "Your comic was not created. Please try again."
      redirect "/comics/new"
    end
  end

end
