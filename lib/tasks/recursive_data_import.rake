namespace :db do
  task bulk_object_upload: :environment do
    products = []
    10.times do |i| 
      product = Product.new(:name => "product #{i}")
      product.variants.build(:title => "Excellent")
      products << product
    end
    Product.import(products, recursive: true)
  end
end