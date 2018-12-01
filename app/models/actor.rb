class Actor < ActiveRecord::Base
  belongs_to :production, polymorphic: true   # Multiple models can take form of 'production'
end
