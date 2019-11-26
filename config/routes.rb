Rails.application.routes.draw do
  # resources :powers, only: [:index]
  # resources :heroines, only: [:index]  <- WHY DID YOU THROW THIS CURVEBALL :(

#heroines

# DONE 2. On the heroines index page, a heroine's super name should link to that heroine's show page.
# # DONE 3. The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. Ms. Marvel), and her power. The power should link to the power show page.  
# 5. As a visitor to the website, I should be able to create a new heroine with her name and super name.
# 6. The form should also allow each heroine to be created with **only one of the existing powers**.
#   ![A form for adding a new heroine](new_heroine_form.gif)
# 7. Make sure no two heroines have the same super name.

get	'/heroines', to:	'heroines#index', as: 'heroines' 
get	'/heroines/new',	 to: 'heroines#new', as: 'new_heroines'	
post	'/heroines',	to: 'heroines#create'	

#powers

get	'/powers', to:	'powers#index', as: 'powers' 
get	'/powers/:id', to: 'powers#show', as: 'power'

end
