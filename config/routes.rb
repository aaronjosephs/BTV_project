BTVProject::Application.routes.draw do
  match "/board" => "board#index"
  resource :board 
  resources :videos
  resources :posts


  match "about" => "home#about"
  match "contact" => "home#contact"
  match "shows" => "home#shows"
  match "schedule" => "home#schedule"
  match "join" => "home#join"
  match "Juncture" => "home#Juncture"
  match "BTV_News" => "home#BTV_News"
  match "Binghamton_Bro_Code" => "home#Binghamton_Bro_Code"
  match "BTV_Mornings" => "home#BTV_Mornings"
  match "Cup_of_Joe" => "home#Cup_of_Joe"
  match "Common_Occurances" => "home#Common_Occurances"
  match "Gametime!" => "home#Gametime!"
  match "What_4" => "home#What_4"
  match "Comics_Anonymous" => "home#Comics_Anonymous"
  root :to => "home#index"
  match "admin" => "admin/content#index"
  match "admin/content/show_users" => "admin/content#show_users"
  match "admin/content/show_users_videos" => "admin/content#show_users_videos"
  match "admin/content/edit_user/:id" => "admin/content#edit_user", :as => :edit_user
  match "admin/content/create_user" => "admin/content#create_user", :as => :create_user
  match "admin/content/show_pending_videos" => "admin/content#show_pending_videos", :as => :show_pending_videos
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
  # match ':controller(/:action(/:id(.:format)))'
end
