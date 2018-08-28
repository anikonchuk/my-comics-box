class UsersController < ApplicationController

  get '/register' do
    if !logged_in?
      erb :'/users/new_user'
    else
      redirect '/comics'
    end
  end

end
