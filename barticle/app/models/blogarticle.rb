class Blogarticle < ApplicationRecord
  validates :blogtitle, presence: true, length: {minimum: 5,maximum: 80}
  validates :blogcontent,presence: true , length: {minimum: 10, maximum:5000}
  validates :blogimglink , presence: true,length:{minimum: 1, maximum:2000}

end

