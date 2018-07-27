Rails.application.routes.draw do
  devise_for :admins
  resources :samples
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'welcome/faqs', :to => 'welcome#faqs'

 
end
