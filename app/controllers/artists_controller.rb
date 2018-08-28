class ArtistsController < ApplicationController

  get '/artists' do
    if logged_in?
      @artists = Artist.all
      erb :'/artists/index'
    else
      redirect '/'
    end
  end

end
