SampleApp2::Application.routes.draw do

    root to: 'static_pages#home'
    match '/signup', to: 'users#new'
    match '/about', to: 'static_pages#about'
    match '/contact', to: 'static_pages#contact'
    match '/help', to: 'static_pages#help'

end
