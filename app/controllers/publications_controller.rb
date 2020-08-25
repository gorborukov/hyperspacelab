class PublicationsController < ApplicationController
	def index
		@publications = Publication.all.order("created_at ASC")
	end

	def show
		@publication = Publication.friendly.find(params[:id])
		set_meta_tags title: @publication.title
	end
end
