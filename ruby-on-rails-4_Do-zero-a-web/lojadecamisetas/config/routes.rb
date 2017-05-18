Rails.application.routes.draw do
	resources :produtos, only: [:new, :create, :destroy]
	
	# A linha acima substitui esses metodos/rotas abaixo
	#post "/produtos" => "produtos#create"
    #get "/produtos/new" => "produtos#new"
    #delete "/produtos/:id" => "produtos#destroy", as: :produto
  	get "/produtos/busca" => "produtos#busca", as: :busca_produto
    root "produtos#index"   
end