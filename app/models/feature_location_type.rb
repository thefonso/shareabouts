class FeatureLocationType < ActiveRecord::Base
  belongs_to :feature, :polymorphic => true, :inverse_of => :feature_location_type
  belongs_to :location_type
  
  validates :feature, :presence => true
  validates :location_type, :presence => true
end
