class ProductsController < ApplicationController
	def show
		@product = Product.friendly.find(params[:id])
		set_meta_tags title: @product.title + ' VST, AU',
                      description: @product.content.to_s,
                      keywords: "#{@product.title}, VST, AudioUnit, Plug-in, Download"
	end
end
