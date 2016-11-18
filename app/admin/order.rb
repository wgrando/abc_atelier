ActiveAdmin.register Order do

permit_params  :order_status_id, :customer_id

form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Details" do
      f.input :OrderStatus_id, :as => :select, :collection => OrderStatus.all.collect {|order_status| [order_status.description, order_status.id] }
      f.input :customer_id, :as => :select, :collection => Customer.all.collect {|customer| [customer.full_name, customer.id] }
    end
    f.actions
  end

end
