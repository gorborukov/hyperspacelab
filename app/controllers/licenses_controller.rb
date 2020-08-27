class LicensesController < ApplicationController
	def register
		@license = License.new
	end

	def create
    @license = License.new(license_params)
    respond_to do |format|
      if @site.save
        format.html { redirect_to root_url, notice: 'Site was successfully created.' }
        format.json { render :show, status: :created, location: @site }
      else
        format.html { render :new }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  def license_params
      params.require(:license).permit(:name, :email, :serial, :active)
  end
end
