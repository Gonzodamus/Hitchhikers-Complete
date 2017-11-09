Rails.application.routes.draw do
	resources :planets, only: [:index, :show, :new, :create]
	resources :alien_races, only: [:index, :show, :new, :create]
	resources :populations, only: [:new, :create, :show]
end

