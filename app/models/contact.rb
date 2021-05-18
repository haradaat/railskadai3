class Contact < ApplicationRecord
    validates :name, presence: true
    validates :name, presence: true, length: { maximum: 140 }
    validates :email, presence: true
    validates :email, presence: true, length: { maximum: 140 }
    validates :content, presence: true
    validates :content, presence: true, length: { maximum: 140 }
end
