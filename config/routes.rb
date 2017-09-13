Rails.application.routes.draw do
  resources :campaigns do
    resources :pledges
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
