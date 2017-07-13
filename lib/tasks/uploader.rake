namespace :db do
  task import_products: :environment do
    require 'csv'

    st = Time.now.to_f
    CSV.foreach("#{Rails.root}/tmp/products1.csv") do |p|
      product = Product.new(sku: p[0], name: p[1], origin: p[2], msrp_cents: p[3])
      product.save!
    end
    et = Time.now.to_f
    tt = et - st
    puts tt
  end
end
