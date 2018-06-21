Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'static_pages#home'
    get  '/help',              to: 'static_pages#help'
    get  '/help/article/:id/:slug', to: 'articles#show', as: 'article'
    get  '/about',             to: 'static_pages#about'
    get  '/security',          to: 'static_pages#security'
    get  '/sitemap',           to: 'static_pages#sitemap'
    get  '/become_a_tutor',    to: 'static_pages#become_a_tutor'
    get  '/tips',              to: 'static_pages#tips'
    get  '/terms',             to: 'static_pages#terms'
    resources :tutors do
      get 'dashboard'
    end
  end


end
