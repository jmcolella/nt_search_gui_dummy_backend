Rails.application.routes.draw do

  get '/partitions' => 'partitions#index'
  get '/partitions/:id' => 'partitions#show'

  get '/folders/:id' => 'folders#show'

end
