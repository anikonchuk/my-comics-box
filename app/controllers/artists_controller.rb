class ArtistsController < ApplicationController

  get '/artists' do
    if logged_in?
      @artists = Artist.all
      erb :'/artists/index'
    else
      redirect '/'
    end
  end

  get '/artists/:id' do
    if logged_in?
      @artist = Artist.find_by(id: params[:id])
      erb :'/artists/show'
    else
      redirect '/'
    end
  end

end
