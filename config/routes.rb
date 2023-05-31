Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'actions#top'
  get '/actions/result' => 'actions#result'
  resources :actions, only:[:create, :show]
  
  delete '/actions' => 'actions#destroy', as: 'destroy_action'
end
