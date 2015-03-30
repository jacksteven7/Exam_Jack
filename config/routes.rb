Rails.application.routes.draw do
  get 'answers/_answer'

  get 'questions/_question'

  resources :exams do
    resources :questions do
    	resources :answers
    end
  end


  root "exams#index"
end
