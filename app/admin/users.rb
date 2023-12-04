ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation, :user_type

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :user_type
    actions
  end

  filter :name
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :user_type, :as => :select, collection: (['admin', 'developer', 'qa'])
    end
    f.actions
  end

end
