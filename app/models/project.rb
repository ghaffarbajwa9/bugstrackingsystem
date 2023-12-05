class Project < ApplicationRecord
  belongs_to :user
  has_many :bugs

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "name", "updated_at", "user_id"]
  end
end
