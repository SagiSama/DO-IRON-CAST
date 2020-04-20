class Performance < ApplicationRecord
  has_many_attached :images

  enum status: {disable: 0, enable: 1}
end
