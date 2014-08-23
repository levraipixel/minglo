Rails.application.routes.draw do

  get 'all' => 'application#all'
  get 'generate' => 'application#generate'

end
