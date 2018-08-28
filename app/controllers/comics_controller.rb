class ComicsController < ApplicationController

  get '/comics' do
    if logged_in?
      @comics = Comic.all
      erb :'/comics/index'
    else
      redirect '/'
    end
  end

end
