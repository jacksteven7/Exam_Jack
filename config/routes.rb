Rails.application.routes.draw do
  get 'questions/_question'

  resources :exams do
    resources :questions
  end


  root "exams#index"
end
