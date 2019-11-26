class Heroine < ApplicationRecord
    belongs_to :power
    validates :super_name, uniquness: true
end
