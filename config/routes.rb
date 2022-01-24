Rails.application.routes.draw do

  get '/' => 'home#top'

  get '/users/new' => 'user#new'
  post '/users/create' => 'user#create'

  get '/login' => 'user#login_form'
  post '/login' => 'user#login'
  post '/logout' => 'user#logout'

  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  get '/posts/:id/show' => 'posts#show'
  get '/posts/:id/edit' => 'posts#edit'
  post '/posts/:id/update' => 'posts#update'
  post '/posts/:id/destroy' => 'posts#destroy'

  get '/table/post' => 'table#post'
  get '/table/user' => 'table#user'
end