Rails.application.routes.draw do
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/index' => 'users#index'
  get "/" => "home#top"
end