Rails.application.routes.draw do
  get 'pages' => 'panel/page#index', as: 'page_index'
  root to: 'panel/default#index'
end
