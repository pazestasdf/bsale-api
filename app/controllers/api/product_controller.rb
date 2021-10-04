module Api
    class ProductController < ApplicationController
        def index
            products = Product.joins(:category).select('product.id, product.name, product.url_image, product.price, product.discount, category.name').order(category: :asc)
            render json: {status: 'success', message: 'Listado de Productos', data: products}, status: :ok
        end
    end
end