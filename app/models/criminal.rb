class Criminal < ApplicationRecord

  has_many :prisons, through: :sentences
  has_many :sentences

  validates :name, presence: true

end
