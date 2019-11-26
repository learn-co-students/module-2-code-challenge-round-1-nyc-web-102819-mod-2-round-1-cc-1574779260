class Heroine < ApplicationRecord
    has_one :power 
    validates :power_id, presence: true
    validates :super_name, uniqueness: true
end
