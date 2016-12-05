class Clown < ApplicationRecord
  has_many :performances, as: :performer, dependent: :nullify
end
