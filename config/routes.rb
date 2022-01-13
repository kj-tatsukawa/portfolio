Rails.application.routes.draw do
  # ====== home ======
  get 'top' => 'home#top'

  # ====== contents ======
  get ':menu_url/index' => 'contents#index'
  get 'new', to: 'contents#new'
  get ':content_type/:id' => 'contents#show'
  get ':content_type/:id/edit' => 'contents#edit'

  post 'create', to: 'contents#create'
  patch ':content_type/:id/update', to: 'contents#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
