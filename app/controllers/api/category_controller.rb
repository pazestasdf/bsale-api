module Api
    class CategoryController < ApplicationController
        def index
            categories = Category.all           
            render json: {status: 'success', message: 'Listado de Categorias', data: categories}, status: :ok
        end
    end
end