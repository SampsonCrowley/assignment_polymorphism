class Band < ApplicationRecord
  has_many :performances, as: :performer, dependent: :destroy
end
