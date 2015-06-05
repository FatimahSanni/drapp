class Counsel < ActiveRecord::Base
  belongs_to :diagnosis
  has_many :medical_records
end
