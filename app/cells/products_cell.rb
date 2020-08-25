class ProductsCell < Cell::ViewModel
  def show
  	@products = Product.all.order("created_at ASC")
    render
  end

  def grid
  	@products = Product.all.order("created_at ASC")
    render
  end

end
