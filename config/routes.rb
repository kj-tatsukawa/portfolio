Rails.application.routes.draw do
  # ====== home ======
  get 'top' => 'home#top'
  get 'new_category', to: 'home#new_category'
  get 'home/delete/administrator', to: 'home#delete_btn'

  post 'create_category', to: 'home#create_category'
  delete 'destroy', to: 'home#destroy'


  # ====== contents ======
  get ':menu_url/index' => 'contents#index'
  get 'new', to: 'contents#new'
  get ':content_type/:id' => 'contents#show'
  get ':content_type/:id/edit' => 'contents#edit'

  post 'create_post', to: 'contents#create_post'
  patch ':content_type/:id/update', to: 'contents#update'
  # post ':content_type/:id/update', to: 'contents#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
