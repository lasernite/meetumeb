Meetumea::Application.routes.draw do
  resources :locations

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  
  match '/users', to: "users#index"
  match '/profile/info', to: "users#info"

  match '/join', to: "users#new"
  match '/login',  to: 'sessions#new'
  match '/logout', to: 'sessions#destroy', via: :delete
  
  root to: "static_pages#home"
  match '/help', to: "static_pages#help"
  match '/about', to: "static_pages#about"
  match '/contact', to: "static_pages#contact"
  match '/posts', to: "static_pages#posts"
  match '/meetups', to: "static_pages#meetups"
  match '/chat', to: "static_pages#chat"
  match '/groups', to: "static_pages#groups"
  match '/web', to: "static_pages#web"
  match '/profile', to: "static_pages#profile"

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
