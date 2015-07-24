Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :portfolios do
    resources :investments
  end

  resources :users do
    resources :notes
  end

  resources :investmentphilosophy
  resources :bios
  resources :users

end
