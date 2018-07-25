Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'    #get 'static_pages/help'
  get  '/about',   to: 'static_pages#about'   #get 'static_pages/about'
  get  '/contact', to: 'static_pages#contact' #get 'static_pages/contact'
  get  '/signup',  to: 'users#new'            #get 'users/new'
end
