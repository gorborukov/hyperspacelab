class ApplicationController < ActionController::Base
	def variant(file, options)
      variant = file.variant(options)
      main_app.rails_blob_representation_path(variant.blob.signed_id, variant.variation.key, variant.blob.filename)
    end
end
