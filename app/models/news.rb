class News < ApplicationRecord
  has_many_attached :images

  enum status: {inactive: 0, active: 1}
end
