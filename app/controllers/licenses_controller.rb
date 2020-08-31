class LicensesController < ApplicationController
  def register
	@products = Product.all
  end

  def check
  	@products = Product.all
  end
end
