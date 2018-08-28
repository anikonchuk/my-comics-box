require 'rack-flash'
class UsersController < ApplicationController
  use Rack::Flash

  get '/register' do
    if !logged_in?
      erb :'/users/new_user'
    else
      redirect '/comics'
    end
  end

end
