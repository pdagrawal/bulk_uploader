class Product < ApplicationRecord
  # Validations
  validates :name, :sku, :origin, :msrp_cents, presence: true
  validates :msrp_cents, :numericality => true
end
