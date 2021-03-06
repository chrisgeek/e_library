Rails.application.routes.draw do


    devise_scope :admin do
      get "/sign_out" => "devise/sessions#destroy"
      root to: "devise/sessions#new"
    end

    devise_for :admins, path: '/'

  #devise_for :admins

  resources  :home
  get 'view' => 'home#view'
  get 'search' => 'home#search'
  get 'return_due' => 'home#return_due'
  # do 
   #   member do 
    #    get 'view'
     # end
  #end





  #devise_for :admins, skip:[:sessions,:registrations]
  #as :admin do
   # get 'login' => 'devise/sessions#new', as: :new_admin_session
    #post 'login' => 'devise/sessions#create', as: :admin_session
    #delete 'logout' => 'devise/sessions#destroy', as: :destroy_admin_session
    #get 'register' => 'devise/registrations#new', as: :new_admin_registration
    #post 'create' => 'devise/registrations#create', as: :admin_registration
    #get 'edit_profile' => 'devise/registrations#edit', as: :edit_admin_registration
    #get "delete_user" => "devise/registrations#destroy", as: :edit_user_registration
  #end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   
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
