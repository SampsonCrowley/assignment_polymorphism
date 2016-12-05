class Performance < ApplicationRecord
  belongs_to :performer, polymorphic: true
end
