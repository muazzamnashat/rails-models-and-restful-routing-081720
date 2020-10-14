Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


 #index
  get '/sushis', to: 'sushis#index'

#new

get 'sushis/new', to: 'sushis#new', as: 'new_sushis'
#create
post '/sushis', to: 'sushis#create'

 #show

 get '/sushis/:id', to: 'sushis#show', as: 'sushi'



  get '/', to: "sushis#home"
  get '/:anything', to: "application#wrong_page"
end
