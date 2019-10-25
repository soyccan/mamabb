Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#     match ':controller(/:action(/:id(.:format)))', :via => :all
    resources :announcements
    post '/login' => 'announcements#login', :as => 'login'
    post '/logout' => 'announcements#logout', :as => 'logout'
end
