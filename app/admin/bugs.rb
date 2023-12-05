ActiveAdmin.register Bug do
  # belongs_to :project

  permit_params :user_id, :project_id, :title, :deadline, :type, :status

  form do |f| 
    f.inputs 'Bug Details' do
      f.input :user_id, as: :hidden, input_html: { value: current_user.id }
      f.input :project_id
      # f.input :project_id,as: :hidden, input_html: { value: project.id }
      f.input :title
      f.input :deadline, as: :datetime_picker

 
      f.input :type, as: :select, collection: ['Feature', 'Bug'], input_html: { id: 'type_select' }
      f.input :status, as: :select, collection: [], input_html: { id: 'status_select' }
    end
    f.actions
  end
  
end

