T2pGameCustomPages::Application.routes.draw do
  root :to => 'home#index'

  match 'login_from_game' => 'home#login_from_game', :as => :user_login_from_game
  match 'register_from_game' => 'home#register_from_game', :as => :user_register_from_game
  match 'register_wo_phone' => 'home#register_wo_phone', :as => :register_user
  match 'restore' => 'home#restore', :as => :restore_user

  match 'login_from_game_error' => 'home#login_from_game_error', :as => :login_from_game_error
  match 'register_from_game_error' => 'home#register_from_game_error', :as => :register_from_game_error
  match 'register_wo_phone_error' => 'home#register_wo_phone_error', :as => :register_wo_phone_error
  match 'restore_error' => 'home#restore_error', :as => :restore_error


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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
