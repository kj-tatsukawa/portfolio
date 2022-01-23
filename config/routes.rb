Rails.application.routes.draw do
  # ========== home ==========
  root 'home#how_to_page'

  get 'top', to: 'home#top'
  get 'new_category', to: 'home#new_category'
  get 'home/delete/administrator', to: 'home#delete_btn'

  post 'create_category', to: 'home#create_category'

  delete 'destroy', to: 'home#destroy'


  # ====== contents ======
  get ':menu_url/index', to: 'contents#index'
  get 'new', to: 'contents#new'
  get ':content_type/:id', to: 'contents#show'
  get ':content_type/:id/edit', to: 'contents#edit'

  post 'create_post', to: 'contents#create_post'

  patch ':content_type/:id/update', to: 'contents#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
