class Category < ApplicationRecord
    has_many :SubCategory

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "name", "title", "updated_at"]
    # Add more attributes here as needed
  end
  def self.ransackable_associations(auth_object = nil)
    ["SubCategory"]
  end


end
