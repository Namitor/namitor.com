Rails.application.routes.draw do
  get 'articles/index'

  resources :articles do
    resources :comments
  end

  get 'api/index'
  get 'welcome/index'
  match 'api/index', via: :post, to: 'api#song_top_n'
  root 'welcome#index'
end
