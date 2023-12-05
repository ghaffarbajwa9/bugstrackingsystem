class Bug < ApplicationRecord
  belongs_to :user
  belongs_to :project


  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "deadline", "id", "id_value", "project_id", "status", "title", "type", "updated_at", "user_id"]
  end
end
