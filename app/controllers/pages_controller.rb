class PagesController  < ApplicationController

    def index 
        @categories = Category.all
        @products = Product.all
        @top_categories = Category.first(6)
    end
end
