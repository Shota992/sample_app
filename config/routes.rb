Rails.application.routes.draw do
  root "static_pages#home"
  # ↑はトップページにアクセスしたら、StaticPageControllerのhomeアクションを表示してねって指示。←railsにどのページをトップページにするかを教えてあげないとアクセスできないから。
  get 'static_pages/home'
  get 'static_pages/help'
  get  "static_pages/about"
  get 'static_pages/contact'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
