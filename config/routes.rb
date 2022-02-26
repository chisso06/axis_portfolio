Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/help' => 'home#help'

  get '/users/new' => 'users#new'
  post '/users/create' => 'users#create'
  get '/users/setting' => 'users#setting'
  post '/users/setting' => 'users#setting_update'
  get '/users/index' => 'users#index'
  get '/users/:id/destroy' => 'users#destroy'
  get '/users/:id' => 'users#show'

  get '/login' => 'users#login_form'
  post '/login' => 'users#login'
  post '/logout' => 'users#logout'

  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  get '/posts/:id/show' => 'posts#show'
  get '/posts/:id/edit' => 'posts#edit'
  post '/posts/:id/update' => 'posts#update'
  post '/posts/:id/destroy' => 'posts#destroy'

  get '/table/post' => 'table#post'
  get '/table/user' => 'table#user'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
