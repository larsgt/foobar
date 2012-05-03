Medspace2::Application.routes.draw do

  ## Forums
  match '/forum' => 'forum#index', :as => 'forum_posts'
  match '/your_genome' => 'personal/genome#index', :as => 'your_genome'
  match '/prescriptions' => 'personal/prescriptions#index', :as => 'your_prescriptions'
  match '/training' => 'personal/training#index', :as => 'your_training'

  root :to => 'home#index'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  #match ':controller(/:action(/:id))(.:format)'
end
