require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
<<<<<<< HEAD
    @user = User.find_by(username: params[:username])
    if @user != nil && @user.password == params[:password]
=======
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
>>>>>>> 4e55f31f65d8aac44dfb56463ea4672e0ba911b6
      session[:user_id] = @user.id
      redirect '/account'
    end
    erb :error
  end

  get '/account' do
<<<<<<< HEAD
    @current_user = User.find_by_id(session[:user_id])
    if @current_user
      erb :account
    else
      erb :error
    end
=======
    
>>>>>>> 4e55f31f65d8aac44dfb56463ea4672e0ba911b6
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end

