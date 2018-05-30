Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',              to: 'static_pages#help'
  get  '/about',             to: 'static_pages#about'
  get  '/security',          to: 'static_pages#security'
  get  '/sitemap',           to: 'static_pages#sitemap'
  get  '/become_a_tutor',    to: 'static_pages#become_a_tutor'
  get  '/tips',              to: 'static_pages#tips'
  get  '/terms',             to: 'static_pages#terms'
  get  '/create_an_account', to: 'static_pages#create_an_account'
end
