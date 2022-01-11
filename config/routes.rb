Rails.application.routes.draw do
  # ====== home ======
  # get 'top' => 'home#top'
  root to: 'home#top'

  # ====== contents ======
  get ':menu_url/index' => 'contents#index'
  get 'new' => 'contents#new'
  get ':content_type/:id' => 'contents#show'
  get ':content_type/:id/edit' => 'contents#edit'

  post 'create', to: 'contents#create'
  post ':content_type/:id/update' => 'contents#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
