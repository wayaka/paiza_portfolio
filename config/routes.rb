Rails.application.routes.draw do
  root  'static_pages#home'
  resources :codes, except: :show
  post '/codes/update/:id', to: 'codes#update_code', as: 'code_update'

  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions',
  :omniauth_callbacks => 'users/omniauth_callbacks'
  } 

  get '/question', to: 'codes#select_question', as: 'select_question'

end
