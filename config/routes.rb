Rails.application.routes.draw do
  resources :exams

  root "exams#index"
end
