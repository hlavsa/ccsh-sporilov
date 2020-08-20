Rails.application.routes.draw do
  root 'welcome#index2'  

  get '/historie-sporilova', to: 'pages#history', as: 'history'
  get '/pastoracni-pece', to: 'pages#offers-index', as: 'offers-index'
  get '/fotogalerie', to: 'welcome#photogallery', as: 'photogallery'
  get '/domov-pro-seniory', to: 'pages#oldpeoples', as: 'oldpeoples'
  get '/personalni-slozeni', to: 'pages#personalni-slozeni', as: 'personalni-slozeni'

  get '/svatost-krest', to: 'offers#krest', as: 'krest'
  get '/domaci-poboznost', to: 'offers#domaci', as: 'domaci'
  get '/biblicke-hodiny', to: 'offers#hodiny', as: 'hodiny'
  get '/svatost-manzelstvi', to: 'offers#manzelstvi', as: 'manzelstvi'
  get '/pohreb', to: 'offers#pohreb', as: 'pohreb'
  get '/svatost-zpoved', to: 'offers#zpoved', as: 'zpoved'

  resources :orders
  
end
