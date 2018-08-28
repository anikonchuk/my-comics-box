class WritersController < ApplicationController

  get '/writers' do
    if logged_in?
      @writers = Writer.all
      erb :'/writers/index'
    else
      redirect '/'
    end
  end

end
