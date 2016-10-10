Rails.application.routes.draw do
  get 'order/new'

  root  'static#index'
  match '/delivery',    to: 'static#delivery',      via: 'get'
  match '/payment',     to: 'static#payment',       via: 'get'
  match '/about',       to: 'static#about',         via: 'get'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
