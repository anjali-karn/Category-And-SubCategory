ActiveAdmin.register SubCategory do
    permit_params :name, :category_id
  
    index do
      selectable_column
      id_column
      column :name
      column :category
      actions
    end
  
    filter :name
    filter :category
  
    form do |f|
      f.inputs "SubCategory Details" do
        f.input :name
        f.input :category
      end
      f.actions
    end
  end
  