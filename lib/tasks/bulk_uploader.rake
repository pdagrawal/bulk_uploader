namespace :db do
  task bulk_upload: :environment do
    require 'csv'

    st = Time.now.to_f
    columns = [:sku, :name, :origin, :msrp_cents]
    product_values = []
    CSV.foreach("#{Rails.root}/tmp/products1.csv") do |p|
      product = [p[0], p[1], p[2], p[3]]
      product_values << product
    end
    Product.import(columns, product_values)
    et = Time.now.to_f
    tt = et - st
    puts tt
  end
end
