class Offer < ApplicationRecord
    # Day20
    has_many :Product1s, through: :product1s_offers , dependent: :destroy
end
