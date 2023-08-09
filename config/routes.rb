Rails.application.routes.draw do

  require 'sidekiq/web'

  devise_for :users
  resources :chats, only: %i[create show] do
    resources :messages, only: %i[create]
  end

  get("/", {:controller => "application", :action => "start"})
  
  Myapp::Application.routes.draw do
    # mount Sidekiq::Web in your Rails app
    mount Sidekiq::Web => "/sidekiq"
  end

end
