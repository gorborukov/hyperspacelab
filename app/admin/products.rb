ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :content, :tech_info, :demo_link_mac, :demo_link_win, :manual_link, :youtube_link, :gumroad_link, :note, :price, :slug, :sku, :available, :preorder, :main, :background, :preview

  controller do
    helper ActionText::Engine.helpers
    def find_resource
      if resource_class.is_a?(FriendlyId)
        scoped_collection.friendly.find(params[:id])
      else
        scoped_collection.find(params[:id])
      end
    end
  end

  index do
    column :title
    column :available
    column :slug
    actions
  end

  show do
    attributes_table do
      row :title
      row :price
      row :slug
      row :sku
      row :available
      row :preorder
    end
  end

  form do |f|
    inputs 'Basic' do
      input :slug
      input :title
      rich_text_area :content
      rich_text_area :tech_info
      input :demo_link_mac
      input :demo_link_win
      input :manual_link
      input :youtube_link
      input :gumroad_link
      input :price
    end
    inputs 'Additional' do
      input :note
      input :available, as: :boolean
      input :preorder, as: :boolean
    end
    inputs 'Graphics' do
      input :main, as: :file
      #div image_tag(f.object.main.variant(resize: '50x50'))
      input :background, as: :file
      input :preview, as: :file
    end
    actions 
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :note, :price, :slug, :sku, :available, :preorder]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
