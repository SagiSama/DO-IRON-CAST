class Performance < ApplicationRecord
  enum status: {inactive: 0, active: 1}
end
