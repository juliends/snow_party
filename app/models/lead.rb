class Lead < ApplicationRecord
  validates :email, presence: true, allow_blank: false
end
