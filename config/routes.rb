Rails.application.routes.draw do
  resources :adoption_applications
  get '/' => 'static_pages#home'
  get '/home' => 'static_pages#home'
  get '/contact' => 'static_pages#contact'
  get '/about' => 'static_pages#about'
  get '/donate' => 'static_pages#donate'

  post '/send_message' => 'static_pages#send_message'

  devise_for :admins
end
