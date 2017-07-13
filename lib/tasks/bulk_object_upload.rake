namespace :db do
  task bulk_object_upload: :environment do
    require 'csv'

    st = Time.now.to_f
    products = []
    CSV.foreach("#{Rails.root}/tmp/products1.csv") do |p|
      products << Product.new(sku: p[0], name: p[1], origin: p[2], msrp_cents: p[3])
    end
    Product.import(products)
    et = Time.now.to_f
    tt = et - st
    puts tt
  end
end
