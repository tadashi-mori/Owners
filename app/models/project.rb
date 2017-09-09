class Project < ApplicationRecord
  validates :title, {presence: true}
  validates :producing_area, {presence: true}
  validates :price, {presence: true}
end
