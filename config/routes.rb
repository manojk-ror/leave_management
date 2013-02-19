LeaveTest::Application.routes.draw do
 
  resources :leave_infos 
  
  root :to => 'home#index'

  devise_for :employees
  namespace :admin do
    resources :employees, :sessions 
    resources :leave_infos do
      member do
        get 'show_perticular_leaves'
        
      end
      collection do
        get 'leaves'
      end
    end
    resources :personal_infos do
      member do
        get 'show_perticular_personal_info'
        get 'record_created'
      end
      collection do
        get 'profile'
      end
    end 
    resources :salaries do
      member do
        get 'add_salary'
        get 'record_created'
      end
        collection do
        get 'salary'
      end
    end     
  end  
  

  
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
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
