Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
  get '/home/form_options_helper_select', to: 'home#form_options_helper_select'
end
