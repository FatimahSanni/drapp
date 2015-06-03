class OcularDisease < ActiveRecord::Base
  belongs_to :medical_record
  validates :name, presence: true, uniqueness: {scope: :medical_record}
end
