require 'rack-flash'
class UsersController < ApplicationController
  use Rack::Flash

  get '/register' do
    if !logged_in?
      erb :'/users/new_user'
    else
      redirect "/users/#{current_user.slug}"
    end
  end

  post '/register' do
    user = User.new(username: params[:username], password: params[:password])

    if user.save
      session[:user_id] = user.id
      redirect "/users/#{user.slug}"
    else
      flash[:message] = "#{user.errors.full_messages.join(", ")}"
      redirect '/register'
    end
  end

  get '/logout' do
    if logged_in?
      session.clear
      redirect '/'
    else
      redirect '/'
    end
  end

end
