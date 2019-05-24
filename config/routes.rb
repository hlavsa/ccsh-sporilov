Rails.application.routes.draw do
  root 'welcome#index2'  

  get 'pages/history', to: 'pages#history', as: 'history'
  get 'pages/offers-index', to: 'pages#offers-index', as: 'offers-index'
  get 'welcome/photogallery', to: 'welcome#photogallery', as: 'photogallery'
  get 'pages/oldpeoples', to: 'pages#oldpeoples', as: 'oldpeoples'

  get 'offers/krest', to: 'offers#krest', as: 'krest'
  get 'offers/domaci', to: 'offers#domaci', as: 'domaci'
  get 'offers/hodiny', to: 'offers#hodiny', as: 'hodiny'
  get 'offers/manzelstvi', to: 'offers#manzelstvi', as: 'manzelstvi'
  get 'offers/pohreb', to: 'offers#pohreb', as: 'pohreb'
  get 'offers/zpoved', to: 'offers#zpoved', as: 'zpoved'
  
end
