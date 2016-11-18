ActiveAdmin.register LineItem do

permit_params :quantity, :track_number, :order_id, :product_id

form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Details" do
      f.input :quantity
      f.input :track_number
      f.input :order_id, :as => :select, :collection => Order.all.collect {|order| [order.id] }
      f.input :product_id, :as => :select, :collection => Product.all.collect {|product| [product.name, product.id] }
    end
    f.actions
  end

end
