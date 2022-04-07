Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
  get '/home/form_options_helper_select', to: 'home#form_options_helper_select'
  get '/home/sjis', to: 'home#sjis'
  post '/home/sjis_post', to: 'home#sjis_post'
end
