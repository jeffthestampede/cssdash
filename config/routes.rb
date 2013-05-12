Cssdash::Application.routes.draw do

  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  # resources :comments
  # resources :favorites
  resources :contents do
    resources :comments
  end
  devise_for :users

  root :to => 'pages#index'
  # Create new content
  get '/contents/new', :to => 'contents#new', :as => 'new_content'
  post '/contents', :to => 'contents#create'
  # Edit content
  get '/contents/:id/edit',  :to => 'contents#edit', :as => 'edit_content'
  # Show content
  get '/contents/:id', :to => 'contents#show', :as => 'content'
  # Show HTML content
  get '/contents/:id/html', :to => 'contents#html'
  # Show CSS content
  get '/contents/:id/css', :to => 'contents#css'
  # Update content
  put '/contents/:id', :to => 'contents#update'
  # Contributor profile
  get '/contents/:id/update_views', :to => 'contents#update_views', :as => 'update_views'
  get '/contents/:id/update_likes', :to => 'contents#update_likes', :as => 'update_likes'

  get '/users/:id', :to => 'users#show'
  # About us
  get '/aboutus', :to => 'pages#aboutus'
  # Tags
  get '/tags/:tag', :to => 'pages#index', :as => :tag
  # Search
  get '/search', :to => 'contents#search'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  #

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
