class WritersController < ApplicationController

  get '/writers' do
    if logged_in?
      @writers = Writer.all
      erb :'/writers/index'
    else
      redirect '/'
    end
  end

  get '/writers/:id' do
    if logged_in?
      @writer = Writer.find_by(id: params[:id])
      erb :'/writers/show'
    else
      redirect '/'
    end
  end

end
