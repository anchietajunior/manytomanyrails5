class Sentence < ApplicationRecord
  
  belongs_to :prison
  belongs_to :criminal

  validates :prison, presence: true
  validates :criminal, presence: true

  default_scope { order(created_at: :desc) }
end
