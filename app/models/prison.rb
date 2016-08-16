class Prison < ApplicationRecord

 has_many :sentences
 has_many :criminals, through: :sentences

 validates :name, presence: true

end
