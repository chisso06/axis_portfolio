Rails.application.routes.draw do
  get 'users/show'

  get '/' => 'home#top'

  get '/users/new' => 'user#new'
  post '/users/create' => 'user#create'
  get '/users/setting' => 'user#setting'
  post '/users/setting' => 'user#setting_update'

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
  get '/users/:id' => 'users#show'
  get '/table/user' => 'table#user'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "home#top"

end