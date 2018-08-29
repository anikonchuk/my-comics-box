class UsersController < ApplicationController

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

  get '/login' do
    if !logged_in?
      erb :'/users/sign_in'
    else
      redirect "/users/#{current_user.slug}"
    end
  end

  post '/login' do
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/users/#{user.slug}"
    else
      flash[:message] = "Log In failed. Please try again"
      redirect '/login'
    end
  end

  get '/users/:slug' do
    if logged_in?
      @user = User.find_by_slug(params[:slug])
      erb :'/users/show'
    else
      redirect '/'
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
