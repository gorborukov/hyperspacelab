ActiveAdmin.register Publication do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :slug, :content

  form do |f|
    inputs 'Basic' do
      input :slug
      input :title
      rich_text_area :content
      input :main, as: :file
    end
    actions 
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
