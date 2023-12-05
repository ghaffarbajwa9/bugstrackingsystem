ActiveAdmin.register Project do
  # belongs_to :user

  
  permit_params :name, :user_id

  index do
    selectable_column
    id_column
    column :name
    column :user_id
    actions
  end

  filter :name
  filter :user_id

  form do |f|
    f.inputs 'Project' do
      f.input :name
      f.input :user_id, as: :hidden, input_html: { value: current_user.id }
    end
    f.actions
  end

  controller do
    def scoped_collection
      # Filter the collection based on the current user's ID
      Project.where(user_id: current_user.id)
    end
  end
  
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
