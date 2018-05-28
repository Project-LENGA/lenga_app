Rails.application.routes.draw do
  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/security'

  get 'static_pages/sitemap'

  get 'static_pages/become_a_tutor'

  get 'static_pages/tips'

  get 'static_pages/terms'

  get 'static_pages/create_an_account'

end
