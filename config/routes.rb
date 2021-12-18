Rails.application.routes.draw do
  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'home#top'
end