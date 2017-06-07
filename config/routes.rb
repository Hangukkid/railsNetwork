Rails.application.routes.draw do
 	get 'welcome/index'

	resources :posts do
		resources :comments do 
			resources :reply
		end 
	end 

	root 'welcome#index'	
end
