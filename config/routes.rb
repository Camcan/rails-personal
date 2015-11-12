Rails.application.routes.draw do

  resources :messages
  root 'site#index'

  get "/index" => 'site#index'
  get '/about' => 'site#about'
  get '/contact' => 'messages#new'

  post '/contact' => 'inquiries#create'

end
