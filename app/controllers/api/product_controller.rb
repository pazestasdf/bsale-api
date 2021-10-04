module Api
    class ProductController < ApplicationController
        def index
            products = Product.joins(:category).select('product.id, product.name as nombre_producto, product.url_image, product.price, product.discount, category.name').order(category: :asc)
            render json: {status: 'success', message: 'Listado de Productos', data: products}, status: :ok
        end

        def show
            # SELECT p.id, p.name, p.url_image, p.price, p.discount, c.name from product p inner join category c on p.category = c.id where p.name like '%mi%' order by p.category asc;
            searchParam = params[:id]
            products = Product.joins(:category).select('product.id, product.name as nombre_producto, product.url_image, product.price, product.discount, category.name').where('product.name like ?', "%#{searchParam}%").order(name: :asc)
            render json: {status: 'success', message: 'Listado de Productos', data: products}, status: :ok
        end
    end
end