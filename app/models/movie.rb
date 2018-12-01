class Movie < ActiveRecord::Base
  has_many :actors, as: :production, dependent: :destroy  # Lets ActiveRecord know to use production_id and production_type to look up association
end
