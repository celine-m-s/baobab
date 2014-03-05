   Baobab::Application.routes.draw do


  get 'pages/index'

  get 'pages/benjamin_graindorge'

  get 'pages/raymond_depardon'

  get 'pages/show_artwork'

  get 'pages/contact'

  root :to => "organizations#dashboard"
  
  devise_for :users

  resources :organizations do
    resources :artworks, only: [:new, :index, :create]

    resources :artists do
      resources :artworks, except: [:new, :index, :create]
    end

    resources :customers
  end




# new_organization_artist_artwork_path   

# GET   '/organizations/:organization_id/artists/:artist_id/artworks/new(.:format)', to:   'artworks#new'

# organization_artist_artworks_path   

# GET   '/organizations/:organization_id/artists/:artist_id/artworks(.:format)', to: 'artworks#index', as: '#'
# POST   '/organizations/:organization_id/artists/:artist_id/artworks(.:format)',  to: 'artworks#create', as: '#'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
