Rails.application.routes.draw do

  root 'landing#land'
  get    '/home',           to: 'landing#land'
  get    '/policy/promise', to: 'policy#promise'
  get    '/policy/privacy', to: 'policy#privacy'
  get    '/policy/aup',     to: 'policy#acceptable'

  get    "home/index",         to: 'home#index'
  get    "home/minor",         to: 'home#minor'

end
