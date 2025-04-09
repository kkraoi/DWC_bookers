Rails.application.routes.draw do
  def method_name(args)
    # code here
  end

  テスt

  get 'homes/top'
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
