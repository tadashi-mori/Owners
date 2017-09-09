class Project < ApplicationRecord
  validates :title, {presence: true}
  validates :producing_area, {presence: true}
  validates :price, {presence: true}
  validates :image, {presence: true}
end
