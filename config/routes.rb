Rails::application.routes.draw do

  get 'advertisement/index'

  get 'advertisement/show'

 resources :posts

 get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
