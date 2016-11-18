ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :name, :description, :image, :price, :stock_quantity, :weight, :size_x, :size_y, :size_z, :deliverable, :package_id, :category_id

form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :image
      f.input :price
      f.input :stock_quantity
      f.input :weight
      f.input :size_x
      f.input :size_y
      f.input :size_z
      f.input :deliverable
      f.input :package_id, :as => :select, :collection => Package.all.collect {|package| [package.description, package.id] }
      f.input :category_id, :as => :select, :collection => Category.all.collect {|category| [category.name, category.id] }
    end
    f.actions
  end

end
