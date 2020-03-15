class DonationSerializer < ActiveModel::Serializer
  attributes :id,
  :canceled,
  :created_at,
  :updated_at,
  :donor_id,
  :duration_minutes,
  :food_name,
  :image_url,
  :measurement,
  :per_person,
  :pickup_location,
  :total_servings
  
  def image
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
  
end
