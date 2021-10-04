module Api
    class ProductController < ApplicationController
        def index
            # mysql querys:
            # SELECT * from product p inner join category c on p.category = c.id order by p.category asc;
            # SELECT p.id, p.name, p.url_image, p.price, p.discount, c.name from product p inner join category c on p.category = c.id order by p.category asc;
            # products = Product.order(category: :asc)
            products = Product.joins(:category).select('product.id, product.name, product.url_image, product.price, product.discount, category.name').order(category: :asc)
            render json: {status: 'success', message: 'Listado de Productos', data: products}, status: :ok
        end
    end
end