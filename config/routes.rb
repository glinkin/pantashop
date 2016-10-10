Rails.application.routes.draw do
  resources :phone_orders
  resources :static
  get 'order/new'

  root  'static#index'
  match '/delivery',    to: 'static#delivery',      via: 'get'
  match '/payment',     to: 'static#payment',       via: 'get'
  match '/about',       to: 'static#about',         via: 'get'
  # match '/order',       to: 'order#new',            via: 'get'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
