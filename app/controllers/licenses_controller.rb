class LicensesController < ApplicationController
  def register
	@license = License.new
  end

  def check
  	@products = Product.all
  end
end
