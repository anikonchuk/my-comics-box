require 'rack-flash'
class ComicsController < ApplicationController
  use Rack::Flash

  get '/comics' do
    if logged_in?
      @comics = Comic.sorted
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

  get '/comics/:id/edit' do
    if logged_in?
      @comic = Comic.find_by_id(params[:id])
      if current_user == @comic.user
        erb :'/comics/edit'
      else
        redirect "/comics/#{params[:id]}"
      end
    else
      redirect '/'
    end
  end

  post '/comics' do
    comic = Comic.new(name: params[:name], notes: params[:notes])
    comic.writer = Writer.find_or_create_by(name: params[:writer])
    comic.artist = Artist.find_or_create_by(name: params[:artist])
    comic.user = current_user
    if comic.save
      flash[:message] = "Your comic has been created!"
      redirect "/comics/#{comic.id}"
    else
      flash[:message] = "Your comic was not created. Please try again."
      redirect "/comics/new"
    end
  end

  patch '/comics/:id' do
    comic = Comic.find_by_id(params[:id])
    if current_user == comic.user
      comic.name = params[:name]
      comic.notes = params[:notes]
      comic.writer = Writer.find_or_create_by(name: params[:writer])
      comic.artist = Artist.find_or_create_by(name: params[:artist])
      if comic.save
        flash[:message] = "Your comic has been updated!"
        redirect "/comics/#{comic.id}"
      else
        flash[:message] = "There was a problem updating your comic. Please try again."
        redirect "/comics/#{comic.id}/edit"
      end
    elsif logged_in?
      redirect "/comics/#{comic.id}"
    else
      redirect '/'
    end
  end

  delete '/comics/:id' do
    comic = Comic.find_by_id(params[:id])
    if current_user == comic.user
      comic.destroy
      redirect "/users/#{current_user.slug}"
    elsif logged_in?
      redirect "/comics/#{comic.id}"
    else
      redirect '/'
    end
  end

end
