class Magician < ApplicationRecord
  has_many :performances, as: :performer, dependent: :destroy
end
