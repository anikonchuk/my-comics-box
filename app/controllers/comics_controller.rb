class ComicsController < ApplicationController

  get '/comics' do
    if logged_in?
      @comics = Comic.all
      erb :'/comics/index'
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

end
