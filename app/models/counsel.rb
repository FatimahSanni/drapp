class Counsel < ActiveRecord::Base
  belongs_to :diagnosis
  validates :counsel, :diagnosis, presence: true
end
