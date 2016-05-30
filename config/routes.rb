Rails.application.routes.draw do
  get 'pages' => 'panel/page#get_index', as: 'page_get_index'
  get 'page/new' => 'panel/page#get_new', as: 'page_get_new'
  post 'page/new' => 'panel/page#post_new', as: 'page_post_new'
  root to: 'panel/default#index'
end
